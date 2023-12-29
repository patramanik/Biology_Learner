// ignore_for_file: file_names

import 'package:blology_learner/component/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostApiComment extends StatefulWidget {
  const PostApiComment({super.key});

  @override
  State<PostApiComment> createState() => _PostApiCommentState();
}

class _PostApiCommentState extends State<PostApiComment> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController userEmailController = TextEditingController();
  final TextEditingController commentController = TextEditingController();

  String successMessage = '';

  Future<void> postData() async {
    const String apiUrl = 'http://127.0.0.1:8000/api/comment';

    final response = await http.post(
      Uri.parse(apiUrl),
      body: {
        'user_name': userNameController.text,
        'user_email': userEmailController.text,
        'comment': commentController.text,
      },
    );

    if (response.statusCode == 201) {
      // Successful API call
      setState(() {
        successMessage = 'Data sent successfully';
        userNameController.clear();
        userEmailController.clear();
        commentController.clear();
      });
    } else {
      // Handle error
      setState(() {
        successMessage = 'Error sending data: ${response.statusCode}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CustomAppBar(),
        // Text(
        //   "Commint",
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontWeight: FontWeight.w500,
        //   ),
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: userNameController,
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: userEmailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: commentController,
              decoration: const InputDecoration(
                labelText: 'Comment',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                postData();
              },
              child: const Text('Submit'),
            ),
            const SizedBox(height: 10),
            Text(
              successMessage,
              style: TextStyle(
                color: successMessage.contains('Error')
                    ? Colors.red
                    : Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
