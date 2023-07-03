// ignore_for_file: prefer_const_constructors

import 'package:music_player/screens/playing%20now/playingPage.dart';
import 'package:music_player/utils/exports.dart';

class RecommendedList extends StatelessWidget {
  const RecommendedList({
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
            reverseTrack.length,
            (index) => GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlayingPage(
                      selectedIndex: index,
                      image: reverseTrack[index]['image'],
                    ),
                  ),
                );
              },
              child: SongCard(
                title: reverseTrack[index]['title'],
                image: reverseTrack[index]['image'],
                subTitle: reverseTrack[index]['subTitle'],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
