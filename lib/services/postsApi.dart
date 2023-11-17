// ignore_for_file: file_names

import 'dart:convert';
import 'package:blology_learner/Model/PostModel.dart';
import 'package:http/http.dart' as http;

class PostsApi{
  static Future<List<PostModel>> getData() async {
    const url = 'http://127.0.0.1:8000/api/posts';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final body = response.body;
        final json = jsonDecode(body);
        final results = json['Posts'] as List<dynamic>;

        // Map the results to a List of Catagory objects
        List<PostModel> postsList =
            results.map((e) => PostModel.fromJson(e)).toList();

        print("Fetch Post data completed");

        // Return the List of Post objects
        return postsList;
      } else {
        throw Exception('Failed to load categories');
      }
    } catch (error) {
      print('Error: $error');
      // Re-throw the error to handle it in the calling widget
      rethrow;
    }
  }
}