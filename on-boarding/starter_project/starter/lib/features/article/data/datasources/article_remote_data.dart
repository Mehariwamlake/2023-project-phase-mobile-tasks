import 'package:starter/core/error/exception.dart';
import 'package:starter/features/article/domain/entites/article.dart';
import '../model/article_model.dart';
import 'package:http/http.dart' as http;
 import 'dart:convert';

abstract class ArticleRemoteData{
  Future<List<ArticleModel>> getArticle();
  Future<ArticleModel> deletArticle(String id);
  Future<ArticleModel> getArticleById(String id);
  Future<ArticleModel> editArticle(String id, Article article);
  Future<ArticleModel> postArticle(Article article);
  Future<ArticleModel> getArticleByUserId(String userId);
  
}

class ArticleRemoteDataSourceImpl implements ArticleRemoteData {
  final http.Client client;
  final uriString = 'http://api/article/';

  ArticleRemoteDataSourceImpl({required this.client});
  @override
  Future<List<ArticleModel>> getArticle() async {
    final response = await client.get(
      Uri.parse(uriString),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      final articlesList = List<Map<String, dynamic>>.from(jsonResponse);
      final articles =
          articlesList.map((json) => ArticleModel.fromJson(json)).toList();
      return articles;
    } else {
      throw ServerException('Internal Server Error');
    }
  }

  @override
  Future<ArticleModel> deletArticle(String id) async {
    final response = await client.delete(
      Uri.parse('${uriString}deleteArticle/$id'),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return ArticleModel.fromJson(jsonResponse);
    } else {
      throw ServerException('Internal Server Failure');
    }
  }

  @override
  Future<ArticleModel> getArticleById(String id) async {
    final response = await client.get(
      Uri.parse('$uriString$id'),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return ArticleModel.fromJson(jsonResponse);
    } else {
      throw ServerException('Internal Server Failure');
    }
  }

  @override
  Future<ArticleModel> getArticleByUserId(String userId) async {
    final response = await client.get(
      Uri.parse('$uriString$userId'),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      final articles =
          jsonResponse.map((json) => ArticleModel.fromJson(json)).toList();
      return articles;
    } else {
      throw ServerException('Internal Server Failure');
    }
  }

  @override
  Future<ArticleModel> postArticle(Article article) async {
    final articleModel = ArticleModel(
      id: article.id,
      title: article.title,
      imageUrl: article.imageUrl,
    
    );

    final jsonBody = json.encode(articleModel.toJson());
    final response = await client.post(
      Uri.parse('${uriString}postArticle'),
      body: jsonBody,
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return ArticleModel.fromJson(jsonResponse);
    } else {
      throw ServerException('Internal Server Failure');
    }
  }

  @override
  Future<ArticleModel> editArticle(String id, Article article) async {
    final articleModel = ArticleModel(
      id: article.id,
      title: article.title,
      imageUrl: article.imageUrl,
    );
    final jsonBody = json.encode(articleModel.toJson());
    final response = await client.put(
      Uri.parse('${uriString}updateArticle/$id'),
      body: jsonBody,
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      return ArticleModel.fromJson(jsonResponse);
    } else {
      throw ServerException('Internal Server Failure');
    }
  }
}