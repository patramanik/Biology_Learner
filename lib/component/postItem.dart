// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final String image;
  final String name;
  final String matatitle;
  final String categoryName;
  final Widget? child;
  const PostItem({
    super.key,
    required this.image,
    required this.name,
    required this.matatitle,
    required this.categoryName,
    this.child,
  });

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
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10),
                    ),
                    child: Image.network(
                      image,
                      width: 160,
                      height: 155,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 2,
                      bottom: 2,
                      left: 8.0,
                      right: 8.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15.0,
                            left: 3.0,
                            right: 5.0,
                            bottom: 5.0,
                          ),
                          child: SizedBox(
                            child: Text(
                              name,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 23, 23, 23),
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        // SizedBox(
                        //   child: Text(
                        //     matatitle,
                        //     textAlign: TextAlign.start,
                        //     style: const TextStyle(
                        //       fontSize: 18.0,
                        //       fontWeight: FontWeight.w400,
                        //       color: Colors.black,
                        //     ),
                        //     maxLines: 1,
                        //     overflow: TextOverflow.ellipsis,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
             Positioned(
              right: 0.0,
              top: 0.0,
              child: SizedBox(
                child:child, 
                // Icon(
                //   Icons.favorite,
                //   color: Colors.pinkAccent,
                //   size: 30,
                // ),
              ),
            ),
            Positioned(
              left: 130,
              top: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(163, 0, 150, 135),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 5, right: 5, bottom: 4, top: 2),
                    child: Text(
                      // 'category',
                      categoryName,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
