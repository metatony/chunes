// ignore_for_file: prefer_const_constructors

import 'package:music_player/utils/exports.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({
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
          Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: ImageIcon(AssetImage('icons/Group 145.png'),color: Theme.of(context).colorScheme.primary ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: ImageIcon(AssetImage('icons/Vector.png'),color: Theme.of(context).colorScheme.primary)),
        ],
      ),
    );
  }
}
