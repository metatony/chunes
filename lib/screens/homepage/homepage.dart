// ignore_for_file: prefer_const_constructors

import 'package:music_player/utils/exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 28),
          child: ListView(
            children: [
              HomePageAppBar(),
              SizedBox(height: 30.h),
              Text('Recommended for you', style: header),
              SizedBox(height: 11.h),
              //recommended list
              RecommendedList(),
              SizedBox(height: 30.h),
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
