import 'package:dartz/dartz.dart';
import 'package:spotify2/data/models/auth/create_user_req.dart';
import 'package:spotify2/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify2/domain/repositary/auth/auth.dart';

import '../../../service_locator.dart';

class AuthRepositaryImpl extends AuthRepositary {
  @override
  Future<void> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<Either<dynamic, dynamic>> signup(CreateUserReq createUserReq) async {
    try {
      final result = await sl<AuthFirebaseService>().signup(createUserReq);
      return result; // Make sure to return the result from the Firebase service
    } catch (error) {
      // Handle the error appropriately and return a failure Either
      return Left(error); // Return the error as an Either
    }
  }
}
