import 'package:blology_learner/component/widgets/myDrawer.dart';
import 'package:blology_learner/component/widgets/myNavigation.dart';
import 'package:flutter/material.dart';

class CatagoryPage extends StatefulWidget {
  const CatagoryPage({super.key});

  @override
  State<CatagoryPage> createState() => _CatagoryPageState();
}

class _CatagoryPageState extends State<CatagoryPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
      bottomNavigationBar: const MyBottemNave(),
      body: const SizedBox(child: Center(child: Text("Catagory"))),
    );
  }
}
