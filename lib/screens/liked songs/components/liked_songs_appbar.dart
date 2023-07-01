// ignore_for_file: prefer_const_constructors

import 'package:music_player/utils/exports.dart';

class LikedSongsAppBar extends StatelessWidget {
  const LikedSongsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //color: Colors.green,
      padding: EdgeInsets.only(top: 28, right: 28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: ImageIcon(AssetImage('icons/arrow-right.png')),
          ),
          IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage('icons/adjust-horizontal-alt.png'),
              )),
        ],
      ),
    );
  }
}
