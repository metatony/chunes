// ignore_for_file: prefer_const_constructors

import 'package:music_player/utils/exports.dart';

class LikedSongs extends StatelessWidget {
  const LikedSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: 28.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LikedSongsAppBar(),
              SizedBox(height: 11.h),
              Text('Liked Songs', style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700, color: Theme.of(context).colorScheme.primary)),
              SizedBox(height: 24.h),
              Expanded(
                child: ListView(
                  children:  [
                    LikedSongsGrid()
                  ],
                ),
              )
              //LikedSongsGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
