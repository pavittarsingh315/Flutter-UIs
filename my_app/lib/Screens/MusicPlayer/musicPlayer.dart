import 'package:flutter/material.dart';
import 'package:my_app/Screens/MusicPlayer/components/body.dart';
import 'package:my_app/constants.dart';

class MusicPlayer extends StatefulWidget {
  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  bool favoriteStar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Now Playing'),
        centerTitle: true,
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                musicPlayerGradient1,
                musicPlayerGradient2,
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          ),
          IconButton(
            icon: Icon(this.favoriteStar ? Icons.star : Icons.star_border),
            onPressed: () {
              setState(() {
                this.favoriteStar = !this.favoriteStar;
              });
            },
          ),
        ],
      ),
      body: MusicPlayerBody(),
    );
  }
}
