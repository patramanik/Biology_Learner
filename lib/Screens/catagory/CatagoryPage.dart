import 'package:blology_learner/Screens/view/view.dart';
import 'package:blology_learner/component/widgets/myDrawer.dart';
import 'package:flutter/material.dart';

import '../../component/BlogCetagoryItem.dart';

class CatagoryPage extends StatefulWidget {
  const CatagoryPage({super.key});

  @override
  State<CatagoryPage> createState() => _CatagoryPageState();
}

class _CatagoryPageState extends State<CatagoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Catagory",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      drawer: const MyDrawer(),
      // bottomNavigationBar: const MyBottemNave(),
      body:   SizedBox(
          child: Center(
              child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            InkWell(
               onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const ViewPost()));
                },
              child: const BlogCetagoryItem(),
            ),
            const BlogCetagoryItem(),
            const BlogCetagoryItem(),
            const BlogCetagoryItem(),
            const BlogCetagoryItem(),
            const BlogCetagoryItem(),
            const BlogCetagoryItem(),
          ],
        ),
      ))),
    );
  }
}
