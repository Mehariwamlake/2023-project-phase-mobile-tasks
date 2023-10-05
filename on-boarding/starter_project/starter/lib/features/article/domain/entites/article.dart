import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String text;
  Article({
    required this.text,
    required  this.id});

  @override

  List<Object?> get props => [text];
}