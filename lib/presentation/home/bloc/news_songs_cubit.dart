import 'dart:ffi';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify2/domain/usecases/song/get_news_songs.dart';
import 'package:spotify2/presentation/home/bloc/news_song_state.dart';

import '../../../service_locator.dart';

class NewsSongsCubit extends Cubit<NewsSongsState> {
  NewsSongsCubit() : super(NewsSongsLoading());
  Future<void> getNewsSongs() async {
    var returnedSongs = await sl<GetNewsSongsUseCase>().call();
    returnedSongs.fold(
      (l) => {NewsSongsLoadFailure()},
      (data) => {NewsSongsLoaded(songs: data)},
    );
  }
}
