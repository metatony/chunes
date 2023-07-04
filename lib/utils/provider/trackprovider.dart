import 'package:music_player/utils/exports.dart';

class TrackProvider extends ChangeNotifier {
  bool themeToggle = true;


  void setThemeToggle() {
    themeToggle = !themeToggle;
    notifyListeners();
  }
}
