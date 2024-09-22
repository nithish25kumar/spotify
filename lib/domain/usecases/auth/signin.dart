import 'package:dartz/dartz.dart';
import 'package:spotify2/core/usercase/usecase.dart';
import 'package:spotify2/data/models/auth/signin_user_req.dart';
import 'package:spotify2/domain/repositary/auth/auth.dart';
import 'package:spotify2/service_locator.dart';

class SigninUseCase implements useCase<Either, signinUserReq> {
  @override
  Future<Either> call({signinUserReq? params}) async {
    return sl<AuthRepositary>().signin(params!);
  }
}
