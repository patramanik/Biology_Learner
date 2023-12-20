// ignore_for_file: file_names

import 'package:blology_learner/component/widgets/myDrawer.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        title: const Center(
          child: Text(
            "Search",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      drawer: const MyDrawer(),
      // bottomNavigationBar: const MyBottemNave(),
      body: const SizedBox(child: Center(child: Text("Search"))),
    );
  }
}

