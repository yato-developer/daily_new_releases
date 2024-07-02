import 'package:daily_new_releases/screen/ui/album_info/album_info_page.dart';
import 'package:daily_new_releases/screen/ui/home/home_view_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomeViewModel _model = HomeViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const Text("Daily New Releases"),
      ),
      body: StreamBuilder(
        stream: _model.getAlbumData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('エラーが発生しました'));
          } else {
            final data = snapshot.data;
            return GridView.builder(
              itemCount: data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: data[index].image != "N/A"
                            ? GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => AlbumInfoPage(
                                        album: data[index].album,
                                        artist: data[index].artist,
                                        imageUrl: data[index].image,
                                        date: data[index].date,
                                      ),
                                    ),
                                  );
                                },
                                child: Image.network(
                                  data[index].image,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => AlbumInfoPage(
                                        album: data[index].album,
                                        artist: data[index].artist,
                                        imageUrl: "",
                                        date: data[index].date,
                                      ),
                                    ),
                                  );
                                },
                                child: const Center(child: Text("no image"))),
                      ),
                      Text(
                        maxLines: 1,
                        data[index].album,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
