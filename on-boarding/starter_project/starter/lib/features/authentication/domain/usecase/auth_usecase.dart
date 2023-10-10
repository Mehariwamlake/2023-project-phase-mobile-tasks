import 'package:dartz/dartz.dart';
import 'package:starter/core/error/fail.dart';
import 'package:starter/core/usecases/usecase.dart';
import 'package:starter/features/authentication/domain/entites/auth_entites.dart';
import 'package:starter/features/authentication/domain/repostory/auth_repostory.dart';

class LoginUseCase implements UseCase<Authentication, Authentication> {
  final AuthenticationRepository repository;
  LoginUseCase(this.repository);
  @override
  Future<Either<Failure, Authentication>> call(Authentication payload) async {
    return await repository.login(payload);
  }
}