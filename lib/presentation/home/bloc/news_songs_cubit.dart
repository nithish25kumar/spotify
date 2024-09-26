import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify2/domain/usecases/song/get_news_songs.dart';
import 'package:spotify2/presentation/home/bloc/news_song_state.dart';

import '../../../service_locator.dart';

class NewsSongsCubit extends Cubit<NewsSongsState> {
  NewsSongsCubit() : super(NewSongsLoading());

  Future<void> getNewsSongs() async {
    // Emit loading state
    emit(NewSongsLoading());

    // Call the use case to fetch songs
    final returnedSongs = await sl<GetNewsSongsUseCase>().call();

    returnedSongs.fold(
      (failure) {
        // Emit failure state
        emit(NewsSongsLoadFailure());
      },
      (songs) {
        // Emit loaded state with the list of songs
        emit(NewsSongsLoaded(songs: songs));
      },
    );
  }
}
