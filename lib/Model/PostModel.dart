// ignore_for_file: file_names

class PostModel {
  final int id;
  final int categoryId;
  final String postName;
  final String metaTitle;
  final String image;
  final String postContent;
  PostModel( {
    required this.id,
    required this.categoryId,
    required this.postName, 
    required this.metaTitle, 
    required this.image, 
    required this.postContent, 
    });
    factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      categoryId:json['category_id'],
      postName: json['post_name'],
      metaTitle: json['meta_title'],
      image: json['image'], 
      postContent:json['post_content'],
     
    );
  }
}
