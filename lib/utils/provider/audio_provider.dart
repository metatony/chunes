import 'package:music_player/utils/exports.dart';

class AudioProvider extends ChangeNotifier {
  List likedSongs = [];

  //! function to add songs to liked songs page
  void addLikedSongs(int index, List sourceList) {
    sourceList[index]['liked'] = !sourceList[index]['liked'];

    if (sourceList[index]['liked'] == true) {
      likedSongs.add(sourceList[index]);
    } else {
      likedSongs.removeAt(index);
    }

    notifyListeners();
  }
}
