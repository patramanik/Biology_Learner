// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BlogCetagoryItem extends StatefulWidget {
  const BlogCetagoryItem({super.key});

  @override
  State<BlogCetagoryItem> createState() => _BlogCetagoryItemState();
}

class _BlogCetagoryItemState extends State<BlogCetagoryItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        shadowColor: Colors.teal,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Center(
                  child: ClipRRect(
                    //borderRadius: BorderRadius.circular(10.0),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/images/Labelled.jpg',
                      width: 130,
                      height: 150,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 2, bottom: 2, left: 8.0, right: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Text(
                            "Single cell Protein (SCP)",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 23, 23, 23),
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        SizedBox(
                          child: Text(
                            "Microbes, Production,Uses",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Positioned(
              right: 10,
              top: 7,
                child: SizedBox(
              child: Icon(
                Icons.favorite,
                color: Colors.pinkAccent,
                size: 35,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
