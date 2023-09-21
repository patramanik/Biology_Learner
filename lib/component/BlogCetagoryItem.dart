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
      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
      child: Card(
        shadowColor: Colors.teal,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 130.0,
              height: 150.0,
              child: ClipRRect(
                //borderRadius: BorderRadius.circular(10.0),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10),
                ),
                child: Image.asset(
                  'assets/images/img1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 2,bottom:2,left: 8.0,right: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Text(
                        "Single cell Protein (SCP)",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 23, 23, 23),
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 10.0,),
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
      ),
    );
  }
}