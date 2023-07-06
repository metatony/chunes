import 'package:music_player/utils/exports.dart';

class AudioProvider extends ChangeNotifier {
  bool isPlaying = false;

  void playing() {
    isPlaying = !isPlaying;
    notifyListeners();
  }
}
