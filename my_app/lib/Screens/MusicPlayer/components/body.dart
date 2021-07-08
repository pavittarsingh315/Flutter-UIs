import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

class MusicPlayerBody extends StatefulWidget {
  const MusicPlayerBody({Key? key}) : super(key: key);

  @override
  _MusicPlayerBodyState createState() => _MusicPlayerBodyState();
}

class _MusicPlayerBodyState extends State<MusicPlayerBody> {
  bool favoriteHeart = false;
  bool isPlaying = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            musicPlayerGradient1,
            musicPlayerGradient2,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Image(
                    image: Song().albumCover,
                    fit: BoxFit.cover,
                    width: size.width * 0.8,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Song().title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            this.favoriteHeart
                                ? Icons.favorite_rounded
                                : Icons.favorite_border_rounded,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              this.favoriteHeart = !this.favoriteHeart;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          Song().singerName,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.0),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.grey,
                        value: 0.4,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          musicPlayerProgressBar,
                        ),
                        minHeight: 10,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "1:24",
                            style: TextStyle(color: Colors.black38),
                          ),
                          Text(
                            "1:48",
                            style: TextStyle(color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          iconSize: 70.0,
                          onPressed: () {
                            setState(() {
                              this.isPlaying = !this.isPlaying;
                            });
                          },
                          icon: Icon(
                            this.isPlaying ? Icons.pause : Icons.play_arrow,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Song {
  String title = "Peaches";
  String singerName = "Justin Bieber";
  AssetImage albumCover = AssetImage("assets/images/cover.png");
}
