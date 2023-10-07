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
  // TODO: implement props
  List<Object> get props => [];
}
