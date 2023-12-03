// ignore_for_file: file_names, avoid_print

import 'dart:convert';
import 'package:blology_learner/Model/HomePostModel.dart';
import 'package:http/http.dart' as http;

class HomePostsApi {
  static Future<List<HomePostModel>> getData() async {
    const url = 'http://127.0.0.1:8000/api/hedePosts';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final body = response.body;
        final json = jsonDecode(body);
        final results = json['data'] as List<dynamic>;

        // Map the results to a List of Catagory objects
        List<HomePostModel> homePostsList =
            results.map((e) => HomePostModel.fromJson(e)).toList();

        print("Fetch HedePost data completed");
        // Return the List of Post objects
        return homePostsList;
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
