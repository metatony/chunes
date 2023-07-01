// ignore_for_file: prefer_const_constructors

import 'package:music_player/screens/playing%20now/playingPage.dart';
import 'package:music_player/utils/exports.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PlayingPage()),
            );
          },
          child: Container(
            //color: Colors.green,
            height: 265.h,
            //padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Material(
                  elevation: 15,
                  borderRadius: BorderRadius.circular(8.r),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: Image.asset(
                        'images/Covers.png',
                        height: 190.h,
                        width: 190.w,
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
          ),
        ),
        SizedBox(width: 14),
      ],
    );
  }
}
