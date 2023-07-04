// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:music_player/utils/exports.dart';

class CarouselCard extends StatelessWidget {
  const CarouselCard({
    super.key, required this.image, required this.title, required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      height: 335.h,
      padding: EdgeInsets.only(right: 28.w),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: CachedNetworkImage(
                imageUrl:  image,
                height: 261.h,
                width: 258.w,
                fit: BoxFit.cover,
                )),
          SizedBox(height: 16.h),
          Text(title,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.primary)),
          SizedBox(height: 5.39.h),
          Text(subTitle,
              style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.secondary)),
        ],
      ),
    );
  }
}

// CarouselSlider(
//                 items: [
//                   ...List.generate(
//                     menuItems.length,
//                     (index) {
//                       return CarouselCard();
//                     },
//                   ).toList(),
//                 ],
//                 options: CarouselOptions(
//                   height: 385.h,
//                   autoPlay: false,
//                   enlargeCenterPage: true,
//                   viewportFraction: 0.78,
//                   enableInfiniteScroll: false,
//                   onPageChanged: (index, reason) {
//                     // setState(() {
//                     //   value.selectedImage = index;
//                     //  });
//                   },
//                 ),
//               ),