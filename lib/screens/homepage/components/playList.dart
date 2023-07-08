// ignore_for_file: prefer_const_constructors

import 'package:music_player/screens/playing%20now/playingPage.dart';
import 'package:music_player/utils/exports.dart';

class PlayList extends StatelessWidget {
  const PlayList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...List.generate(
            tracks.length,
            (index) => GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlayingPage(
                      selectedIndex: index,
                      image: tracks[index]['image'], 
                      subTitle: tracks[index]['subTitle'], 
                      title: tracks[index]['title'], 
                      songList: tracks[index]['song'],
                    ),
                  ),
                );
              },
              child: SongCard(
                title: tracks[index]['title'],
                image: tracks[index]['image'],
                subTitle: tracks[index]['subTitle'],
              ),
            ),
          )
        ],
      ),
    );
  }
}
