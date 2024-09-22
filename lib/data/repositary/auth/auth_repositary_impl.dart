import 'package:dartz/dartz.dart';
import 'package:spotify2/data/models/auth/create_user_req.dart';
import 'package:spotify2/data/models/auth/signin_user_req.dart';
import 'package:spotify2/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify2/domain/repositary/auth/auth.dart';

import '../../../service_locator.dart';

class AuthRepositaryImpl extends AuthRepositary {
  @override
  Future<Either> signin(signinUserReq signinUserReq) async {
    return await sl<AuthFirebaseService>().signin(signinUserReq);
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
    return await sl<AuthFirebaseService>().signup(createUserReq);
  }
}
