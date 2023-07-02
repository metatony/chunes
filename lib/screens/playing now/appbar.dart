// ignore_for_file: prefer_const_constructors

import 'package:music_player/utils/exports.dart';

class PlayingNowAppBar extends StatelessWidget {
  const PlayingNowAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //color: Colors.green,
      padding: EdgeInsets.only(top: 28.h, left: 0, right: 28.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: ImageIcon(AssetImage('icons/arrow-right.png'), color: Theme.of(context).colorScheme.primary ),
          ),
          Text(
            'Playing Now',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp, color: Theme.of(context).colorScheme.primary),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
