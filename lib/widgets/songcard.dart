// ignore_for_file: prefer_const_constructors

import 'package:music_player/utils/exports.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    super.key,
    required this.title,
    required this.image,
    required this.subTitle,
  });

  final String title, image, subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          //color: Colors.green,
          height: 265.h,
          child: Column(
            children: [
              Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(8.r),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: CachedNetworkImage(
                    imageUrl: image,
                    height: 190.h,
                    width: 190.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                title,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.primary),
              ),
              SizedBox(height: 5.39.h),
              Text(
                subTitle,
                style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.secondary),
              ),
            ],
          ),
        ),
        SizedBox(width: 14),
      ],
    );
  }
}
