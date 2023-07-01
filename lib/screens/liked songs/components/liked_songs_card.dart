// ignore_for_file: prefer_const_constructors

import 'package:music_player/utils/exports.dart';

class LikedSongsCard extends StatelessWidget {
  const LikedSongsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      height: 235.h,
      child: Column(
        children: [
          Material(
            elevation: 15,
            borderRadius: BorderRadius.circular(8.r),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Image.asset(
                  'images/Covers.png',
                  //height: 190.h,
                  width: 145.w,
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(height: 16.h),
          Text(
            'Monsters Go Bump',
            style: title,
          ),
          SizedBox(height: 5.39.h),
          Text('ERIKA RECINOS', style: artist),
        ],
      ),
    );
  }
}
