import 'package:blology_learner/component/widgets/myDrawer.dart';
import 'package:blology_learner/component/widgets/myNavigation.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: const Center(
          child: Text(
            "About Us",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: const MyBottemNave(),
      body: const SizedBox(child: Center(child: Text("About Us"))),
    );
  }
}