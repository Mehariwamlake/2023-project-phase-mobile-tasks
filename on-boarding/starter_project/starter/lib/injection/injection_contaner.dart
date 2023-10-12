import 'package:get_it/get_it.dart';
import 'package:starter/injection/article_injection.dart';
final sl = GetIt.instance;

Future<void> init() async {
  //! Features - User

  //! Features - Article
  await articleInjectionInit();

  //! Features - Feed
  

  //! Core

  //! External
}