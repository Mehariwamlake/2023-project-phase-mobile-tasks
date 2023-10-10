import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:starter/core/error/fail.dart';

abstract class UseCase<Type, params> {
  Future<Either<Failure, Type>> call (params params);

}

class Noparams extends Equatable {
  @override

  List<Object> get props => throw UnimplementedError();
}