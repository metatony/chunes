
// ignore_for_file: prefer_const_constructors

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
        children: const [
          SongCard(),
          SongCard(),
          SongCard(),
        ],
      ),
    );
  }
}