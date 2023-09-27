// ignore_for_file: file_names

import 'package:blology_learner/component/BlogCetagoryItem.dart';
import 'package:flutter/material.dart';
import '../../component/widgets/myDrawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Home",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      drawer: const MyDrawer(),
      body: SizedBox(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              // color: Colors.amberAccent,
              width: width,
              height: height / 2 - 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Card(
                      shadowColor: Colors.teal,
                      elevation: 5.0,
                      child: SizedBox(
                        width: 390,
                        child: Column(
                          children: [
                            Stack(
                              // alignment: AlignmentDirectional.topEnd,
                              children: [
                                SizedBox(
                                  height: height / 2 - 200,
                                  width: width,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      'assets/images/Marine.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.pink,
                                    size: 30,
                                  ),
                                )
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "Single cell Protein (SCP) ",
                                style: TextStyle(
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shadowColor: Colors.teal,
                      elevation: 5.0,
                      child: SizedBox(
                        width: 390,
                        child: Column(
                          children: [
                            SizedBox(
                              height: height / 2 - 200,
                              // width: width,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      'assets/images/Labelled.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.pink,
                                      size: 30,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "Single cell Protein (SCP) ",
                                style: TextStyle(
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Container(
            //   color: Colors.blueAccent,
            //   width: width,
            //   height: height,
            //   child: ListView(
            //     scrollDirection: Axis.vertical,
            //     children: const [BlogCetagoryItem()],
            //   ),
            // )
            const BlogCetagoryItem(),
            const BlogCetagoryItem(),
            const BlogCetagoryItem(),
            const BlogCetagoryItem(),
            const BlogCetagoryItem(),
            const BlogCetagoryItem(),
          ],
        ),
      )),
    );
  }
}
