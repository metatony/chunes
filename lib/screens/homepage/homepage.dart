// ignore_for_file: prefer_const_constructors

import 'package:music_player/screens/homepage/components/playList.dart';
import 'package:music_player/screens/homepage/components/recommended_list.dart';
import 'package:music_player/utils/exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 28),
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomePageAppBar(),
              SizedBox(height: 11.h),
              Text('Recommended for you', style: header),
              SizedBox(height: 11.h),
            //recommended list
              RecommendedList(),
              SizedBox(height: 40.h),
              Text('My Playlist', style: header),
              SizedBox(height: 11.h),
            //Playlsit
              PlayList(),
            ],
          ),
        ),
      ),
    );
  }
}
