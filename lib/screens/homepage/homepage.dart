// ignore_for_file: prefer_const_constructors

import 'package:music_player/utils/exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: DrawerMenu(),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: 28.w),
          child: ListView(
            children: [
              HomePageAppBar(),
              SizedBox(height: 30.h),
              Text('Recommended for you', style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700, color: Theme.of(context).colorScheme.primary)),
              
              SizedBox(height: 11.h),
              //recommended list
              RecommendedList(),
              SizedBox(height: 30.h),
              Text('My Playlist', style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700, color: Theme.of(context).colorScheme.primary)),
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
