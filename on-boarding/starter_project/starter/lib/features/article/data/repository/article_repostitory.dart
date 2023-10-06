import 'package:dartz/dartz.dart';
import 'package:starter/core/error/exception.dart';
import 'package:starter/core/error/fail.dart';
import 'package:starter/core/network/network_info.dart';
import 'package:starter/features/article/data/datasources/article_local_data.dart';
import 'package:starter/features/article/data/datasources/article_remote_data.dart';
import 'package:starter/features/article/domain/entites/article.dart';
import 'package:starter/features/article/domain/repository/article_repository.dart';



abstract class ArticleRepositoryImpl implements ArticleRepository {
  final ArticleRemoteData remoteDataSource;
  final ArticleLocalData localDataSource;
  final NetworkInfo networkInfo;

  ArticleRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
    required this.networkInfo,
  });

  
  @override
  Future<Either<Failure, List<Article>>> getArticle() async {
    if (await networkInfo.isconnected) {
      try {
        final remoteArticles = await remoteDataSource.getArticle();
        localDataSource.cacheArticle(remoteArticles);
        return Right(remoteArticles);
      } on ServerException {
        return Left(serverFailure("Internal Server Failure!"));
      }
    } else {
      try {
        final localArticles = await localDataSource.getLastArticle();
        return Right(localArticles);
      } on CacheException {
        return Left(CacherFailure("Local Catch Sever Failure"));
      }
    }
  }

@override
  Future<Either<Failure, Article>> deletArticle(String id) async {
    try {
      final deletedArticle = await remoteDataSource.deletArticle(id);
      return Right(deletedArticle);
    } on ServerException {
      return Left(serverFailure("Internal Server Failure!"));
    }
  }

  @override
  Future<Either<Failure, Article>> getArticleById(String id) async {
    try {
      final article = await remoteDataSource.getArticleById(id);
      return Right(article);
    } on ServerException {
      return Left(serverFailure("Internal Server Failure"));
    }
  }

  @override
  Future<Either<Failure, List<Article>>> getArticleByUserId(
      String userId) async {
    try {
      final articlesByUser = await remoteDataSource.getArticleByUserId(userId);
      return Right(articlesByUser);
    } on ServerException {
      return Left(serverFailure("Internal Server Failure"));
    }
  }

  @override
  Future<Either<Failure, Article>> postArticle(Article article) async {
    try {
      final createdArticle = await remoteDataSource.postArticle(article);
      return Right(createdArticle);
    } on ServerException {
      return Left(serverFailure("Internal Server Failure"));
    }
  }

  @override
  Future<Either<Failure, Article>> editArticle(
      String id, Article article) async {
    try {
      final updatedArticle = await remoteDataSource.editArticle(id, article);
      return Right(updatedArticle);
    } on ServerException {
      return Left(serverFailure("Internal Server Failure"));
    }
  }
}