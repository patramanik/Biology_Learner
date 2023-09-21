import 'package:blology_learner/component/widgets/myDrawer.dart';
import 'package:blology_learner/component/widgets/myNavigation.dart';
import 'package:flutter/material.dart';

class LikesPage extends StatefulWidget {
  const LikesPage({super.key});

  @override
  State<LikesPage> createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        title: const Center(
          child: Text(
            "Likes",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: const MyBottemNave(),
      body: const SizedBox(child: Center(child: Text("Likes"))),
    );
  }
}