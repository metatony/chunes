// ignore_for_file: prefer_const_constructors

import 'package:music_player/utils/exports.dart';

class AudioFile extends StatefulWidget {
  const AudioFile({
    super.key,
    required this.audioPlayer,
  });

  final AudioPlayer audioPlayer;

  @override
  State<AudioFile> createState() => _AudioFileState();
}

class _AudioFileState extends State<AudioFile> {
  double value = 30;

  //! create an instance of duration and assign variables to track the slider position
  Duration duration = Duration();
  Duration position = Duration();
  bool isLoop = false;

  //! create a path variable to store your audio file
  final String path =
      'Nasty_C_Ft_Davido_Cassper_Nyovest_-_Juice_Back_Remix_.mp3';

  @override
  void initState() {
    super.initState();
    widget.audioPlayer.onDurationChanged.listen((d) {
      setState(() {
        duration = d;
      });
    });

    widget.audioPlayer.onPositionChanged.listen((p) {
      setState(() {
        position = p;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final audioProvider = Provider.of<AudioProvider>(context, listen: false);
    return SizedBox(
      width: double.infinity,
      child: Column(children: [
        Container(
          padding: EdgeInsets.only(right: 28.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '',
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.primary),
              ),
              Text(
                '',
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).colorScheme.primary),
              ),
            ],
          ),
        ),
        SizedBox(height: 35.h),
        Slider(
          min: 0,
          max: 100,
          value: value,
          activeColor: Theme.of(context).colorScheme.primary,
          inactiveColor: Theme.of(context).colorScheme.secondary,
          onChanged: (value) {},
        ),
        SizedBox(height: 20.h),
        Center(
          child: SizedBox(
            width: 171.w,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: ImageIcon(AssetImage('icons/next.png'),
                      color: Theme.of(context).colorScheme.primary),
                ),
                SizedBox(width: 15.w),
                IconButton(
                  onPressed: () {
                    audioProvider.playing();
                    //widget.audioPlayer.play(AssetSource(path));
                  },
                  icon: audioProvider.isPlaying
                      ? Icon(Icons.pause, color: Colors.black)
                      : Icon(Icons.play_arrow_outlined, color: Colors.black),
                ),
                SizedBox(width: 15.w),
                IconButton(
                  onPressed: () {},
                  icon: ImageIcon(AssetImage('icons/next (1).png'),
                      color: Theme.of(context).colorScheme.primary),
                ),
                SizedBox(width: 15.w),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
