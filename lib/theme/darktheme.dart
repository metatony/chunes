// ignore_for_file: prefer_const_constructors

import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/utils/exports.dart';

ThemeData darkTheme = ThemeData(
  fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: Color(0xff091227),
      primary: Colors.white,
      secondary: Color(0xffA5C0FF),
    ));