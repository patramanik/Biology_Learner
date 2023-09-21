import 'package:blology_learner/component/BlogCetagoryItem.dart';
import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: const [
          SizedBox(
            height: 20,
          ),
          BlogCetagoryItem(),
          SizedBox(
            height: 20,
          ),
          BlogCetagoryItem(),
          SizedBox(
            height: 20,
          ),
          BlogCetagoryItem(),
          SizedBox(
            height: 20,
          ),
          BlogCetagoryItem(),
          SizedBox(
            height: 20,
          ),
          BlogCetagoryItem(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
