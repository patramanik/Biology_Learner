// ignore_for_file: file_names

class BodyPostModel {
  final int id;
  final int categoryId;
  final String categoryName;
  final String postName;
  final String metaTitle;
  final String image;
  final String postContent;

  BodyPostModel({
    required this.id,
    required this.categoryId,
    required this.categoryName,
    required this.postName,
    required this.metaTitle,
    required this.image,
    required this.postContent,
  });

  factory BodyPostModel.fromJson(Map<String, dynamic> json) {
    return BodyPostModel(
      id: json['id'],
      categoryId: json['category_id'],
      categoryName: json['name'],
      postName: json['post_name'],
      metaTitle: json['meta_title'],
      image: json['image'],
      postContent: json['post_content'],
    );
  }
}
