import 'package:music_player/utils/exports.dart';

class NavItems extends StatelessWidget {
  const NavItems({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title, icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 32.h),
      child: Row(
        children: [
          ImageIcon(
            AssetImage(icon),
            color: Colors.grey,
          ),
          SizedBox(width: 30.w),
          Text(
            title,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
