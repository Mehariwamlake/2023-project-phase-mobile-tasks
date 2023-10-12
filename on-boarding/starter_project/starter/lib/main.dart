import 'package:flutter/material.dart';
import 'package:starter/features/article/presentation/pages/article_page.dart';
import 'injection/injection_contaner.dart' as di;
void main() async {
  await di.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ArticlePage()
      );
    
  }
}
