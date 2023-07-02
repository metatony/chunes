// ignore_for_file: prefer_const_constructors

import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/utils/exports.dart';

ThemeData lighttheme= ThemeData(
  fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: Colors.white,
      primary: Colors.black,
      secondary: Colors.grey,
    ));