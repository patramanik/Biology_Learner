// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BlogItem extends StatefulWidget {
  const BlogItem({super.key});

  @override
  State<BlogItem> createState() => _BlogItemState();
}

class _BlogItemState extends State<BlogItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.teal,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          SizedBox(
            child: ClipRRect(
              //borderRadius: BorderRadius.circular(10.0),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0)),
              child: Image.asset(
                'assets/images/img1.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Single cell Protein (SCP)",
                    style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}