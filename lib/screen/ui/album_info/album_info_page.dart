import 'package:daily_new_releases/model/repository/request_api.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../components/play_button.dart';
import 'album_info_view_model.dart';

// ignore: must_be_immutable
class AlbumInfoPage extends StatelessWidget {
  String imageUrl;
  String album;
  String artist;
  String date;
  AlbumInfoPage(
      {super.key,
      required this.imageUrl,
      required this.album,
      required this.artist,
      required this.date});
  final AlbumInfoViewModel _model = AlbumInfoViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(title: const Text("Daily New Releases"), actions: [
        IconButton(
          onPressed: () {
            _model.deleteAlbum(artist, album);
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.delete),
        ),
      ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: 250,
                width: 250,
                child: imageUrl == ""
                    ? const Center(
                        child: Text(
                        "no image",
                        style: TextStyle(fontSize: 18),
                      ))
                    : Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                album,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4.0, right: 4),
              child: Text(
                artist,
                style: const TextStyle(fontSize: 22),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    final url =
                        Uri.parse('https://open.spotify.com/album/$albumId');
                    launchUrl(url);
                  },
                  child: SizedBox(
                    height: 40,
                    child: Image.asset('images/spotify_logo.png'),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    final url = Uri.parse(
                        'https://music.apple.com/jp/search?term=$album%20$artist');
                    launchUrl(url);
                  },
                  child: SizedBox(
                      height: 54,
                      child: Image.asset('images/apple_music_logo.png')),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: () {
                    final url = Uri.parse(
                        'https://music.youtube.com/search?q=$album $artist');
                    launchUrl(url);
                  },
                  child: SizedBox(
                    height: 53,
                    child: Image.asset('images/youtube_logo.png'),
                  ),
                ),
              ],
            ),
            FutureBuilder(
              future: _model.getAlbumInfo(album, date),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Padding(
                    padding: EdgeInsets.only(top: 100.0),
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return const Center(child: Text('エラーが発生しました'));
                } else {
                  final data = snapshot.data;

                  return data.isNotEmpty
                      ? ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    data[index].name,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  PlayArrowButton(
                                    url: data[index].preview_url,
                                  )
                                ],
                              ),
                            );
                          },
                        )
                      : const Padding(
                          padding: EdgeInsets.only(top: 100.0),
                          child: Text(
                            "Spotifyに楽曲データが存在しません。",
                            style: TextStyle(fontSize: 16),
                          ),
                        );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
