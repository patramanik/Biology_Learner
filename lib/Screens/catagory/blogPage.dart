// ignore_for_file: file_names
import 'package:blology_learner/component/blogItem.dart';
import 'package:flutter/material.dart';



class Blog extends StatefulWidget {
  const Blog({super.key});

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const BlogItem()));
                },
                child: const BlogItem(),
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const BlogItem()));
                },
                child: const BlogItem(),
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const BlogItem()));
                },
                child: const BlogItem(),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}

