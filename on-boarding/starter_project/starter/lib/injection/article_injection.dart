import 'package:get_it/get_it.dart';
import 'package:starter/features/article/domain/usecases/aticle_usecase.dart';
import 'package:starter/features/article/presentation/bloc/article_bloc.dart';

final sl = GetIt.instance;
Future<void> articleInjectionInit() async {
  sl.registerFactory(
    () => ArticleBloc(
      deletArticle: sl(),
      getArticleById: sl(),
      editArticle:  sl(),
      getArticle: sl(),
      getArticleByUserId: sl(),
      postArticle: sl(),
      
    )
  );

  // usecase

  sl.registerLazySingleton(() => GetArticleById(repository: sl()),
  );

  sl.registerLazySingleton(() => GetArticleById(repository: sl()),
  );

   sl.registerLazySingleton(() => EditArticle(repository: sl()),
  );

   sl.registerLazySingleton(() => PostArticle(repository: sl()),
  );

   sl.registerLazySingleton(() => DeletArticle(repository: sl()),
  );


  // Repository

  
}