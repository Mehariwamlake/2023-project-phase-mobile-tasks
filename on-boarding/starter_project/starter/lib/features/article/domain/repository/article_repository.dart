import 'package:dartz/dartz.dart';
import '../../../../core/error/fail.dart';
import '../entites/article.dart';


abstract class ArticleRepository {
  Future<Either<Failure, Article>> getArticle();
  Future<Either<Failure, Article>> deletArticle(String id);
}