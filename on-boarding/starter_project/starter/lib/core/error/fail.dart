import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  Failure([List properties = const <dynamic>[]]);

}

class serverFailur extends Failure {
  @override
  List<Object>get props => [];
}

class CacherFailure extends Failure {
  @override
  List<Object> get props => [];
}