import 'package:flutter/material.dart';
import 'Mydrawer.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

// ignore: must_be_immutable
class myplayer extends StatefulWidget {
  const myplayer({Key? key}) : super(key: key);
  @override
  State<myplayer> createState() => _myplayerState();
}
class _myplayerState extends State<myplayer> {
  AssetsAudioPlayer player = AssetsAudioPlayer();
List<Audio> L = [
  Audio("voices/Moonlight Sonata.mp3"),
  Audio("voices/Que Sera, Sera.mp3"),
  Audio("voices/The Last Of us.mp3"),
];
int index = 0;
initState() {
  super.initState();
  player.open(Playlist(audios: L));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
          color: Colors.white,
          child: Text("OMD"),
        ),
        backgroundColor: Color.fromARGB(255, 54, 123, 120),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.message)),
          IconButton(onPressed: () {}, icon: Icon(Icons.share)),
        ],
      ),
      drawer: mydrawer(),
      body: Column(children: [
        SizedBox(
          height: 150,
        ),
        Container(
            height: 216,
            width: 384,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/3.jpg'),
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            )),
        Container(
          height: 100,
          width: 384,
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Color.fromARGB(255, 152, 122, 69)),
          child: Column(
            children: [
              Text("We are in $index song"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("song $index"),
                  IconButton(
                    onPressed: () {
                      if (index > 0) {
                        player.previous();
                        setState(() {
                          index--;
                        });
                      } else {
                        setState(() {
                          index = L.length - 1;
                        });
                        player.playlistPlayAtIndex(index);
                      }
                    },
                    icon: Icon(Icons.skip_previous),
                  ),
                  IconButton(
                    onPressed: () {
                      player.playlistPlayAtIndex(index);
                    },
                    icon: Icon(Icons.play_arrow),
                  ),
                  IconButton(
                      onPressed: () {
                        print('stop');
                        player.pause();
                      },
                      icon: Icon(Icons.pause)),
                  IconButton(
                    onPressed: () {
                      if (index < L.length - 1) {
                        player.next();
                        setState(() {
                          index++;
                        });
                      } else {
                        setState(() {
                          index = 0;
                        });
                        player.playlistPlayAtIndex(index);
                      }
                    },
                    icon: Icon(Icons.skip_next),
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
      backgroundColor: Color.fromARGB(255, 181, 205, 204),
    );
  }
}
