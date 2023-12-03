// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BlogItem extends StatefulWidget {
  final String name;
  final String catagoryName;
  final String image;

  const BlogItem({
    Key? key,
    required this.name,
    required this.catagoryName,
    required this.image,
  }) : super(key: key);

  @override
  State<BlogItem> createState() => _BlogItemState();
}

class _BlogItemState extends State<BlogItem> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          width: width - 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                blurRadius: 8.0,
                offset: Offset(8, 8),
                color: Colors.teal,
              ),
            ],
          ),
          child: Column(
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                  child: Image.network(
                    widget.image,
                    fit: BoxFit.fill,
                    height: height / 2 - 205,
                    width: width - 40,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    bottom: 15,
                    right: 10.0,
                    left: 10.0,
                  ),
                  child: Text(
                    widget.name,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 23, 23, 23),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(163, 0, 150, 135),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                widget.catagoryName,
                style: const TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
