
// ignore_for_file: prefer_const_constructors

import 'package:music_player/utils/exports.dart';

class LikedSongsGrid extends StatelessWidget {
  const LikedSongsGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.only(right: 28),
      itemCount: 12,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5.h,
        //childAspectRatio: 1 / 1.3,
        mainAxisExtent: 235.h,
      ),
      itemBuilder: (context, index) => LikedSongsCard(),
    );
  }
}
