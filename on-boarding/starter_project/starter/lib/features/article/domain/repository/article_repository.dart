import 'package:dartz/dartz.dart';
import '../../../../core/error/fail.dart';
import '../entites/article.dart';


abstract class ArticleRepository {
  Future<Either<Failure, List<Article>>> getArticle();
  Future<Either<Failure, Article>> deletArticle(String id);
  Future<Either<Failure, Article>> getArticleById(String id);
  Future<Either<Failure, Article>> editArticle(String id, Article article);
  Future<Either<Failure, Article>> postArticle(Article article);
  Future<Either<Failure, List<Article>>> getArticleByUserId(String userId);





}