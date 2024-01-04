import 'package:flutter/material.dart';

class CatagoryItem extends StatelessWidget {
  final String image;
  final String name;
  final String matatitle;

  const CatagoryItem({
    Key? key,
    required this.image,
    required this.name,
    required this.matatitle,
  }) : super(key: key);

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
                      height: 150,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 2, bottom: 2, left: 10.0, right: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 3.0, right: 5.0, bottom: 5.0),
                          child: SizedBox(
                            child: Text(
                              name,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 23, 23, 23),
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        // const SizedBox(
                        //   height: 10.0,
                        // ),
                        // SizedBox(
                        //   child: Text(
                        //     matatitle,
                        //     textAlign: TextAlign.start,
                        //     style: const TextStyle(
                        //       fontSize: 18.0,
                        //       fontWeight: FontWeight.w400,
                        //       color: Colors.black,
                        //     ),
                        //     maxLines: 2,
                        //     overflow: TextOverflow.ellipsis,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // const Positioned(
            //   right: 12,
            //   top: 9,
            //   child: SizedBox(
            //     child: Icon(
            //       Icons.favorite,
            //       color: Colors.pinkAccent,
            //       size: 35,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
