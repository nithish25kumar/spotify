import 'package:dartz/dartz.dart';
import 'package:spotify2/data/sources/songs/song_firebase_service.dart';
import 'package:spotify2/domain/repositary/song/song.dart';

import '../../../service_locator.dart';

class SongRepositaryImpl extends SongsRepositary {
  @override
  Future<Either> getNewsSongs() async {
    return await sl<SongFirebaseService>().getNewsSongs();
  }

  @override
  Future<Either> getPlayList() async {
    return await sl<SongFirebaseService>().getPlaylist();
  }
}
