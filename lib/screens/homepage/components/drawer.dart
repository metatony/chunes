// ignore_for_file: prefer_const_constructors

import 'package:music_player/utils/exports.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 265.w,
      child: ListView(
        padding: EdgeInsets.only(top: 73.h, left: 20.w, right: 10.w),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: ImageIcon(
                  AssetImage('icons/Group 144.png'),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage('icons/moon.png'),
                ),
              ),
            ],
          ),
          SizedBox(height: 51),
          ...List.generate(
            menuItems.length,
            (index) => NavItems(
              icon: menuItems[index]['icon'],
              title: menuItems[index]['title'],
            ),
          ),
        ],
      ),
    );
  }
}
