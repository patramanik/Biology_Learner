// ignore_for_file: file_names
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class TestData extends StatefulWidget {
//   const TestData({super.key});

//   @override
//   State<TestData> createState() => _TestDataState();
// }

// class _TestDataState extends State<TestData> {
//   Map<String, dynamic>? dataMap;
//   Map<String, dynamic>? donedataMap;
//   Future hitApi() async {
//     http.Response response;
//     response =
//         await http.get(Uri.parse("https://dummy.restapiexample.com/api/v1/employees"));

//     if (response.statusCode == 200) {
//       setState(() {
//         dataMap = jsonDecode(response.body);
//         // print(dataMap);
//       });
//     }
//   }

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   hitApi();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text("Test Page"),
//       ),
//     );
//   }
// }
