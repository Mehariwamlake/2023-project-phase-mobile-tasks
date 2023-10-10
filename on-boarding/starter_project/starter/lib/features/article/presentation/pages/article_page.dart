import 'dart:html';

import 'package:flutter/material.dart';
import 'package:starter/features/article/presentation/widget/Article_post.dart';
import 'package:starter/features/article/presentation/widget/Header_icon.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [
        const HeaderIconButtons(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(children: [
            
            ]),
          ))
      ]),
    );
  }
}