import 'package:get_it/get_it.dart';
import 'package:spotify2/data/repositary/auth/auth_repositary_impl.dart';
import 'package:spotify2/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify2/data/sources/songs/song_firebase_service.dart';
import 'package:spotify2/domain/repositary/auth/auth.dart';
import 'package:spotify2/domain/usecases/auth/signin.dart';
import 'package:spotify2/domain/usecases/auth/signup.dart';
import 'package:spotify2/domain/usecases/song/get_news_songs.dart';

import 'data/repositary/song/song_repositary_impl.dart';
import 'domain/repositary/song/song.dart';

final sl = GetIt.instance;
Future<void> initializeDependencies() async {
  sl.registerSingleton<SongFirebaseService>(SongFirebaseServiceImpl());
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  sl.registerSingleton<AuthRepositary>(AuthRepositaryImpl());

  sl.registerSingleton<SongsRepositary>(SongRepositaryImpl());

  sl.registerSingleton<SignupUseCase>(SignupUseCase());
  sl.registerSingleton<SigninUseCase>(SigninUseCase());
  sl.registerSingleton<GetNewsSongsUseCase>(GetNewsSongsUseCase());
}
