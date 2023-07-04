// ignore_for_file: prefer_const_constructors

import 'package:music_player/utils/exports.dart';
import 'package:music_player/utils/provider/trackprovider.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TrackProvider>(context);
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
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
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              IconButton(
                onPressed: () {
                  provider.setThemeToggle();
                },
                icon: provider.themeToggle
                    ? Icon(
                        Icons.wb_sunny,
                        color: Theme.of(context).colorScheme.primary,
                      )
                    : Icon(Icons.nightlight_outlined),
                color: Theme.of(context).colorScheme.primary,
              ),
            ],
          ),
          SizedBox(height: 51.h),
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
