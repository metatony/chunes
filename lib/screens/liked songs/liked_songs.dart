// ignore_for_file: prefer_const_constructors

import 'package:music_player/utils/exports.dart';

class LikedSongs extends StatelessWidget {
  const LikedSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LikedSongsAppBar(),
              SizedBox(height: 11.h),
              Text('Liked Songs', style: header),
              SizedBox(height: 24.h),
              Expanded(
                child: ListView(
                  children: const [
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
