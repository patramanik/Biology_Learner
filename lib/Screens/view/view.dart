import 'package:blology_learner/component/widgets/myDrawer.dart';
import 'package:flutter/material.dart';

class ViewPost extends StatefulWidget {
  const ViewPost({super.key});

  @override
  State<ViewPost> createState() => _ViewPostState();
}

class _ViewPostState extends State<ViewPost> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      drawer: const MyDrawer(),
      body: SizedBox(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: height / 2 - 130,
                child: Stack(
                  children: [
                    SizedBox(
                      height: height / 2 - 180,
                      // color: Colors.amberAccent,
                      child: Center(
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/images/img1.jpg',
                            fit: BoxFit.fill,
                            height: height / 2 - 180,
                            width: width,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(163, 0, 150, 135),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Text(
                            "Category",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      right: 10,
                      // top: 220,
                      bottom: 9,
                      child: Container(
                        height: 80.0,
                        width: width - 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 9.0,
                                offset: Offset(
                                  0,
                                  2,
                                ),
                                color: Colors.grey,
                                blurStyle: BlurStyle.normal),
                          ],
                        ),
                        child: const Row(
                          children: [
                            Expanded(
                                child: Icon(
                              Icons.favorite,
                              color: Colors.pink,
                              size: 40,
                            )),
                            VerticalDivider(
                              width: 5,
                              thickness: 3,
                              color: Colors.black45,
                              indent: 10,
                              endIndent: 10,
                            ),
                            Expanded(
                                child: Icon(
                              Icons.comment,
                              color: Colors.teal,
                              size: 40,
                            )),
                            VerticalDivider(
                              width: 5,
                              thickness: 3,
                              color: Colors.black45,
                              indent: 10,
                              endIndent: 10,
                            ),
                            Expanded(
                                child: Icon(
                              Icons.share,
                              color: Colors.blue,
                              size: 40,
                            )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  // // height: height,
                  width: width,
                  // color: Colors.pink,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Bacillariophyta (Diatoms): An Overview",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Algae present in the group"
                          " Bacillariophyta (class Bacillariophyceae) are known as diatoms."
                          " They constitute a very large assemblaof unicellular algae."
                          "Diatoms differ from other algae due to their symmetrical "
                          "structure and delicately designed cell walls."
                          " Thus, diatoms are considered the most beautiful microscopic algae.",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Algae present in the group"
                          " Bacillariophyta (class Bacillariophyceae) are known as diatoms."
                          " They constitute a very large assemblaof unicellular algae."
                          "Diatoms differ from other algae due to their symmetrical "
                          "structure and delicately designed cell walls."
                          " Thus, diatoms are considered the most beautiful microscopic algae.",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Algae present in the group"
                          " Bacillariophyta (class Bacillariophyceae) are known as diatoms."
                          " They constitute a very large assemblaof unicellular algae."
                          "Diatoms differ from other algae due to their symmetrical "
                          "structure and delicately designed cell walls."
                          " Thus, diatoms are considered the most beautiful microscopic algae.",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Algae present in the group"
                          " Bacillariophyta (class Bacillariophyceae) are known as diatoms."
                          " They constitute a very large assemblaof unicellular algae."
                          "Diatoms differ from other algae due to their symmetrical "
                          "structure and delicately designed cell walls."
                          " Thus, diatoms are considered the most beautiful microscopic algae.",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
