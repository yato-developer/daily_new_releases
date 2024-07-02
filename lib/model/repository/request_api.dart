import 'dart:convert';
import 'package:daily_new_releases/model/data_class/release_date/release_date.dart';
import 'package:daily_new_releases/model/data_class/song/song.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

String clientId = dotenv.get('CLIENT_ID');
String clientSecret = dotenv.get('CLIENT_SECRET');
final String authString = base64.encode(utf8.encode('$clientId:$clientSecret'));

String albumId = "";

class RequestModel {
  Future<List<Song>> searchAlbum(String album, String date) async {
    final response = await http.post(
      Uri.parse('https://accounts.spotify.com/api/token'),
      headers: {
        'Authorization': 'Basic $authString',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: {
        'grant_type': 'client_credentials',
      },
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> tokenResponse = json.decode(response.body);
      final String accessToken = tokenResponse['access_token'];

      //albumの検索
      final albumResponse = await http.get(
        Uri.parse(
            'https://api.spotify.com/v1/search?q=$album&type=album&limit=10'),
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      );

      if (albumResponse.statusCode == 200) {
        final Map<String, dynamic> albumInfo = json.decode(albumResponse.body);
        final List<dynamic> albums = albumInfo['albums']['items'];
        List<Song> songs = [];

        for (var album in albums) {
          //リリース日を取得
          final release = ReleaseDate.fromJson(album);
          //一致したらアルバムの情報を取得
          if (release.release_date == date) {
            albumId = album['id'];
            final albumDetailsResponse = await http.get(
              Uri.parse('https://api.spotify.com/v1/albums/$albumId?market=JP'),
              headers: {
                'Authorization': 'Bearer $accessToken',
              },
            );

            if (albumDetailsResponse.statusCode == 200) {
              final Map<String, dynamic> albumDetails =
                  json.decode(albumDetailsResponse.body);
              final List<dynamic> tracks = albumDetails['tracks']['items'];

              for (var music in tracks) {
                songs.add(Song.fromJson(music));
              }

              return songs;
            } else {
              throw Exception('Failed to load album details');
            }
          }
        }

        //アルバムデータが無いとき
        albumId = "";
        return [];
      } else {
        throw Exception('Failed to load album details');
      }
    } else {
      throw Exception('Failed to authenticate with Spotify API');
    }
  }
}
