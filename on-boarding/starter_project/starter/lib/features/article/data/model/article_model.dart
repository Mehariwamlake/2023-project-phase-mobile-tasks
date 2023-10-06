import '../../domain/entites/article.dart';

class ArticleModel extends Article {
  ArticleModel({
    required String id,
    required String title,
    required String imageUrl
  }) : super(
          id: id,
          title: title,
          imageUrl: imageUrl,
          
        );

  factory ArticleModel.fromJson(Map<String, dynamic> json) {

    return ArticleModel(
      id: json['id'],
      title: json['title'],
      imageUrl: json['imageUrl'],
      
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id' : id, 
      'title' : title, 
      "imageUrl":imageUrl, 
     
    };
  }
}