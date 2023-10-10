import 'package:flutter/material.dart';
import 'package:starter/core/utils/images.dart';

class ArticlePost extends StatelessWidget {
  const ArticlePost({super.key});

  @override
  Widget build(BuildContext context) {

    String text = 'akldjfljadflgaj dhgjgdd h';
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(),
          child: ClipRRect(
            borderRadius: BorderRadius.only(),
            child: Image(
              image: AssetImage(postImage),
              fit: BoxFit.cover,),),
          ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: double.infinity),
          child: Text(
            text,
            style: TextStyle(fontSize: 12,),
          ),)
          
      ],);
  }
}