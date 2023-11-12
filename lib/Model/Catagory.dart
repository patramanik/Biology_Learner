// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

class Catagory {
  final int id;
  final String name;
  final String matatitle;
  final String image;
  Catagory({
    required this.id,
    required this.name,
    required this.matatitle,
    required this.image,
  });
  factory Catagory.fromJson(Map<String, dynamic> json) {
    return Catagory(
      id: json['id'],
      name: json['name'],
      matatitle: json['mata_title'],
      image: json['image'],
    );
  }
}
