// ignore_for_file: file_names, avoid_print

import 'dart:convert';
import 'package:blology_learner/Model/Catagory.dart';
import 'package:http/http.dart' as http;


class CatagoryApi {
 static Future<List<Catagory>> getData() async {
    const url = 'https://app.biologylearner.com/api/catagorys';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final body = response.body;
        final json = jsonDecode(body);
        final results = json['catagorys'] as List<dynamic>;

        // Map the results to a List of Catagory objects
        List<Catagory> catagoryList =
            results.map((e) => Catagory.fromJson(e)).toList();

        print("Fetch category data completed");

        // Return the List of Catagory objects
        return catagoryList;
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
