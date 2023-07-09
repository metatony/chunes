// ignore_for_file: prefer_const_constructors

import 'package:music_player/screens/playing%20now/components/appbar.dart';
import 'package:music_player/utils/exports.dart';

class PlayingPage extends StatefulWidget {
  final int selectedIndex;
  final String image, title, subTitle;
  final String songList;

  const PlayingPage({
    super.key,
    required this.selectedIndex,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.songList,
  });

  @override
  State<PlayingPage> createState() => _PlayingPageState();
}

class _PlayingPageState extends State<PlayingPage> {
  //! audioplayer initilization
  late AudioPlayer player;
  bool isRepeat = false;
  final audioPlayer = AudioPlayer();
  Color color = Colors.grey;

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
            PlayingNowAppBar(
              press: () {
                //! this stops the audio when you go back to the previous page
                player.stop();
                Navigator.pop(context);
              },
            ),
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
                        color: color),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            AudioFile(
              audioPlayer: player,
              //! passing the song list through this parameter
              song: widget.songList,
            )
          ]),
        ),
      ),
    );
  }
}
