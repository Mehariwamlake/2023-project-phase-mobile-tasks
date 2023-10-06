import '../model/article_model.dart';

abstract class ArticleLocalData{
  Future<List<ArticleModel>> getLastArticle();
  Future<void> cacheArticle(List<ArticleModel> article);

}

