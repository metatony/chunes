// ignore_for_file: prefer_const_constructors

import 'package:music_player/utils/exports.dart';

class LikedSongsCard extends StatelessWidget {
  const LikedSongsCard({
    super.key, required this.image, required this.title, required this.subTitle, required this.song, this.onTap,
  });

  final String image, title, subTitle, song;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        //color: Colors.green,
        height: 235.h,
        child: Column(
          children: [
            Material(
              elevation: 15,
              borderRadius: BorderRadius.circular(8.r),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.network(
                    image,
                    //height: 190.h,
                    width: 145.w,
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(height: 16.h),
            Text(
              title,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.primary),
            ),
            SizedBox(height: 5.39.h),
            Text(subTitle,
                style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.secondary)),
          ],
        ),
      ),
    );
  }
}
