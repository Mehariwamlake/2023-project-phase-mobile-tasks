import 'package:dartz/dartz.dart';
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
  Future<Either<Failure, List<Article>>> call (String id) async{
    return await repository.getArticle();
  }
}


class GetArticleById {
  final ArticleRepository repository;
  GetArticleById({required this.repository});
  Future<Either<Failure, Article>> call (String userId) async{
    return await repository.getArticleById(userId);
  }
}

class PostArticle {
  final ArticleRepository repository;
  PostArticle({required this.repository});
  Future<Either<Failure, Article>> call (Article article) async{
    return await repository.postArticle(article);
  }
}

class GetArticleByUserId {
  final ArticleRepository repository;
  GetArticleByUserId({required this.repository});
  Future<Either<Failure, Article>> call (String userId) async{
    return await repository.getArticleByUserId(userId);
  }
}

class EditArticle {
  final ArticleRepository repository;
  EditArticle({required this.repository});
  Future<Either<Failure, Article>> call (String id, Article article) async{
    return await repository.editArticle(id, article);
  }
}