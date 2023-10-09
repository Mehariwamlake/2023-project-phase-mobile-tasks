import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:starter/core/error/fail.dart';
import 'package:starter/features/article/domain/entites/article.dart';
import 'package:starter/features/article/domain/usecases/aticle_usecase.dart';

part 'article_event.dart';
part 'article_state.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  final DeletArticle deletArticle;
  final EditArticle editArticle;
  final PostArticle postArticle;
  final GetArticle getArticle;
  final GetArticleById getArticleById;
  final GetArticleByUserId getArticleByUserId;


   ArticleState articleSucessOrFail(Either<Failure, Article> data) {
    return data.fold(
      (failure) => ArticleFailerState(error: failure),
      (success) => ArticleSuccessState(article: success));
  }

  

  void _getArticleById(
    GetArticleByIdEvent event, Emitter<ArticleState> emit) async {
      emit(ArticleLoadingState());
      final result = await getArticleById(event.articleId);
      emit(articleSucessOrFail(result));
    }

  void _getArticleByUserId(
      GetArticleByUserIdEvent event, Emitter<ArticleState> emit) async {
    emit(ArticleLoadingState());
    final result = await getArticleByUserId(event.userId);
    emit(articleSucessOrFail(result));
  }

  void _postArticle(
    PostArticleEvent event, Emitter<ArticleState> emit) async{
      emit(ArticleLoadingState());
      final result = await postArticle(event.article);
      emit(articleSucessOrFail(result));
    }

  void _editArticle(EditArticleEvent event, Emitter<ArticleState> emit) async {
    emit(ArticleLoadingState());
    final result = await editArticle(event.articleId, event.article);
    emit(articleSucessOrFail(result));
  }

  void _deletArticle(DeletArticleEvent event, Emitter<ArticleState> emit) async {
    emit(ArticleLoadingState());
    final result = await deletArticle(event.articleId);
    emit(articleSucessOrFail(result));

  }

  ArticleBloc({
    required this.deletArticle,
    required this.editArticle,
    required this.getArticle,
    required this.getArticleById,
    required this.getArticleByUserId,
    required this.postArticle,
  }) : super(ArticleInitial()) {
    on<GetArticleByIdEvent>(_getArticleById);
    on<GetArticleByUserIdEvent>(_getArticleByUserId);
    on<PostArticleEvent>(_postArticle);
    on<EditArticleEvent>(_editArticle);
    on<DeletArticleEvent>(_deletArticle);
  }
}
