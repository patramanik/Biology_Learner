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
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      shadowColor: Colors.teal,
                      elevation: 5.0,
                      child: Stack(
                        // alignment: AlignmentDirectional.topEnd,
                        children: [
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                'assets/images/img1.jpg',
                                height: 260,
                                width: width - 23,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            right: 10,
                            left: 10,
                              child: Container(
                                height: 60,
                                width: width - 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50.0),
                                  border: Border.all(color: Colors.grey)
                                ),
                                child: const Center(
                                  child: Text(
                                    'This is botany post',
                                    style: TextStyle(color: Colors.black,fontSize: 22),
                                  ),
                                ),
                              ),
                            
                          )
                        ],
                      ),
                    ),
                  ),
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
