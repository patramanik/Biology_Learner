// ignore_for_file: file_names

import 'package:blology_learner/component/BlogCetagoryItem.dart';
import 'package:blology_learner/component/blogItem.dart';
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
              width: width,
              height: height / 2 - 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: BlogItem()
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: BlogItem()
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: BlogItem()
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
