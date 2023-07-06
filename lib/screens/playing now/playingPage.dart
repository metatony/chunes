// ignore_for_file: prefer_const_constructors

import 'package:music_player/utils/exports.dart';

class PlayingPage extends StatefulWidget {
  final int selectedIndex;
  final String image, title, subTitle;

  const PlayingPage(
      {super.key,
      required this.selectedIndex,
      required this.image,
      required this.title,
      required this.subTitle});

  @override
  State<PlayingPage> createState() => _PlayingPageState();
}

class _PlayingPageState extends State<PlayingPage> {
  double value = 30;

  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 28.w),
          child: ListView(children: [
            PlayingNowAppBar(),
            SizedBox(height: 50.h),
            CarouselCard(
              image: widget.image,
              title: widget.title,
              subTitle: widget.subTitle,
            ),
            Container(
              padding: EdgeInsets.only(right: 28.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: ImageIcon(AssetImage('icons/volume-1.png'),
                          color: Colors.grey)),
                  IconButton(
                    onPressed: () {},
                    icon: ImageIcon(AssetImage('icons/ic_round-repeat.png'),
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            AudioFile(
              audioPlayer: player
              )
          ]),
        ),
      ),
    );
  }
}
