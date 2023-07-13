// ignore_for_file: prefer_const_constructors

import 'package:music_player/screens/playing%20now/playingPage.dart';
import 'package:music_player/utils/exports.dart';

class LikedSongsGrid extends StatelessWidget {
   LikedSongsGrid({
    super.key,
  });

   int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final audioProvider = Provider.of<AudioProvider>(context, listen: false);
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.only(right: 28.w),
      itemCount: audioProvider.likedSongs.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5.h,
        //childAspectRatio: 1 / 1.3,
        mainAxisExtent: 235.h,
      ),
      itemBuilder: (context, index) => LikedSongsCard(
        image: audioProvider.likedSongs[index]['image'],
        subTitle: audioProvider.likedSongs[index]['subTitle'],
        title: audioProvider.likedSongs[index]['title'],
        song: audioProvider.likedSongs[index]['song'],
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PlayingPage(
                selectedIndex: selectedIndex + index,
                image: audioProvider.likedSongs[index]['image'],
                title: audioProvider.likedSongs[index]['title'],
                subTitle: audioProvider.likedSongs[index]['subTitle'],
                songList: audioProvider.likedSongs[index]['song'],
              ),
            ),
          );
        },
      ),
    );
  }
}
