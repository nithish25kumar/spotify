import 'package:get_it/get_it.dart';
import 'package:spotify2/data/repositary/auth/auth_repositary_impl.dart';
import 'package:spotify2/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify2/domain/repositary/auth/auth.dart';
import 'package:spotify2/domain/usecases/auth/signin.dart';
import 'package:spotify2/domain/usecases/auth/signup.dart';

final sl = GetIt.instance;
Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  sl.registerSingleton<AuthRepositary>(AuthRepositaryImpl());
  sl.registerSingleton<SignupUseCase>(SignupUseCase());
  sl.registerSingleton<SigninUseCase>(SigninUseCase());
}
