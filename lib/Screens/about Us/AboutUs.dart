// ignore: file_names
import 'package:blology_learner/component/widgets/myDrawer.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "About Us",
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      drawer: const MyDrawer(),
      body: SafeArea(
        child: SizedBox(
          child: Stack(
            children: [
              Container(
                height: height,
                width: width,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                      Color(0xff764ba2),
                      Color(0xff667eea),
                    ],
                        begin: FractionalOffset.topLeft,
                        end: FractionalOffset.bottomRight)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: Colors.white,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 9, left: 20, right: 8),
                    child: Text(
                      "Biology Learner is an educational"
                      " application related to Biology"
                      " (microbiology, bacteriology, virology, parasitology, mycology, immunology, etc.)"
                      " and different other branches of biology with an aim to provide study"
                      " notes to undergraduate and graduate students.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.teal
                      ),
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
