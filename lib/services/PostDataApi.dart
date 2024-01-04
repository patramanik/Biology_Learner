// ignore_for_file: file_names, avoid_print

import 'dart:convert';
import 'package:blology_learner/Model/PostModel.dart';
import 'package:http/http.dart' as http;



class PostsResponse {
  final int catagoryId;

  PostsResponse({required this.catagoryId});

  static Future<List<PostModel>> getData(catagoryId) async {
    final url = 'https://app.biologylearner.com/api/postdata/$catagoryId';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final body = response.body;
        final json = jsonDecode(body);
        final results = json['Posts'] as List<dynamic>;

        // Map the results to a List of Catagory objects
        List<PostModel> postList = results.map((e) => PostModel.fromJson(e)).toList();

        print("Fetch category data completed");

        // Return the List of Catagory objects
        return postList;
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
