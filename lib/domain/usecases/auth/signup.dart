import 'package:dartz/dartz.dart';
import 'package:spotify2/core/usercase/usecase.dart';
import 'package:spotify2/data/models/auth/create_user_req.dart';
import 'package:spotify2/domain/repositary/auth/auth.dart';
import 'package:spotify2/service_locator.dart';

class SignupUseCase implements useCase<Either, CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq? params}) async {
    return sl<AuthRepositary>().signup(params!);
  }
}
