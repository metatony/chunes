import 'package:music_player/utils/exports.dart';

class AudioProvider extends ChangeNotifier {
  List<Map<String, dynamic>> likedSongs = [];
  bool liked = false;

  //! function to add songs from reverse track
  void likedSongPlay(int index) {
    likedSongs.add(tracks[index]);
    notifyListeners();
  }

  //! function to add songs from reverse track
  void likedSongRec(int index) {
    likedSongs.add(reverseTrack[index]);
    notifyListeners();
  }

  //! function to handle liked button && add songs to liked songs page
  void addLikedSong(int index) {
    liked = !liked;

    if (liked == true) {
      likedSongPlay(index);
    } else {
      likedSongs.removeAt(index);
    }
    notifyListeners();
  }
}

    //likedSongs[index]['liked'] = !likedSongs[index]['liked'];