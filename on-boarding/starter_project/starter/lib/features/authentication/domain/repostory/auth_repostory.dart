import 'package:dartz/dartz.dart';
import 'package:starter/core/error/fail.dart';
import 'package:starter/features/authentication/domain/entites/auth_entites.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, Authentication>> login(Authentication user);

  Future<Either<Failure, Authentication>> signup(Authentication newuser);
}