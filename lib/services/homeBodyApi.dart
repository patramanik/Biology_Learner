// ignore_for_file: file_names, avoid_print

import 'dart:convert';
import 'package:blology_learner/Model/BodyPost.dart';
import 'package:http/http.dart' as http;

class HomeBodyApi {
  static Future<List<BodyPostModel>> getData() async {
    const url = 'http://127.0.0.1:8000/api/data';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final body = response.body;
        final json = jsonDecode(body);
        final results = json['data'] as List<dynamic>;

        // Map the results to a List of Catagory objects
        List<BodyPostModel> homeBodyList =
            results.map((e) => BodyPostModel.fromJson(e)).toList();

        print("Fetch HedePost data completed");
        // Return the List of Post objects
        return homeBodyList;
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
