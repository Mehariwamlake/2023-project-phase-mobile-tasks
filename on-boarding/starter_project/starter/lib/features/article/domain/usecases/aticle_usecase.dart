import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:starter/core/error/fail.dart';
import 'package:starter/features/article/domain/entites/article.dart';
import '../repository/article_repository.dart';

class DeletArticle {
  final ArticleRepository repository;
  DeletArticle({required this.repository});
  Future<Either<Failure, Article>> call (String id) async {
    return await repository.deletArticle(id);
  }
}

class GetArticle {
  final ArticleRepository repository;
  GetArticle({required this.repository});
  Future<Either<Failure, Article>> call (String id) async{
    return await repository.getArticle();
  }
}