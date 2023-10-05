import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String imageUrl;




  Article({
    required this.title,
    required  this.id,
    required this.imageUrl,

    }) : super();

  @override

  List<Object?> get props => [id, title];
}