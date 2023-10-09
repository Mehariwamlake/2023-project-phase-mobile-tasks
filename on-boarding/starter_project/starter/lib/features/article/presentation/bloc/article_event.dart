part of 'article_bloc.dart';

abstract class ArticleEvent extends Equatable {
  const ArticleEvent();

  @override
  List<Object> get props => [];
}

class GetArticleByIdEvent extends ArticleEvent {
  final String articleId;
  GetArticleByIdEvent({required this.articleId});

  @override
  List<Object> get props => [articleId];
}

class GetArticleByUserIdEvent extends ArticleEvent {
  final String userId;
  GetArticleByUserIdEvent({required this.userId});

  @override
  List<Object> get props => [userId];
}

class PostArticleEvent extends ArticleEvent {
  final Article article;
  PostArticleEvent({required this.article});

  @override
  List<Object> get props => [article];
}


class EditArticleEvent extends ArticleEvent {
  final Article article;
  final String articleId;
  EditArticleEvent({required this.article, required
   this.articleId});

  @override

  List<Object> get props => [article, articleId];
}

class DeletArticleEvent extends ArticleEvent {
  final String articleId;
  DeletArticleEvent({required this.articleId});

  @override
  List<Object> get props => [articleId];
}