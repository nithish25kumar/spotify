import 'package:dartz/dartz.dart';
import 'package:spotify2/data/models/auth/create_user_req.dart';

abstract class AuthRepositary {
  Future<Either> signup(CreateUserReq createUserReq);
  Future<void> signin();
}
