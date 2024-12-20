import 'package:dartz/dartz.dart';

abstract class SongsRepositary {
  Future<Either> getNewsSongs();
  Future<Either> getPlayList();
}
