// ignore_for_file: file_names

import 'package:blology_learner/Screens/Likes/LikesPage.dart';
import 'package:blology_learner/Screens/catagory/CatagoryPage.dart';
import 'package:blology_learner/Screens/home/HomeScreen.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const icColor = Colors.blue;

    final drawerItems = ListView(
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffa8edea), Color(0xfffed6e3)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight),
          ),
          child: Column(
            children: [
              SizedBox(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "www.biologylearner.com",
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ),
        ListTile(
          title: const Text("Home"),
          leading: const Icon(
            Icons.home,
            color: Colors.purple,
          ),
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
        ),
        ListTile(
          title: const Text("Likes"),
          leading: const Icon(
            Icons.favorite,
            color: Colors.pink,
          ),
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const LikesPage()));
          },
        ),
        ListTile(
          title: const Text("Category"),
          leading: const Icon(
            Icons.category_outlined,
            color: Colors.teal,
          ),
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const CatagoryPage()));
          },
        ),
        ListTile(
          title: const Text("Share"),
          leading: const Icon(
            Icons.share,
            color: Colors.blueAccent,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text("Share"),
          leading: const Icon(
            Icons.lock,
            color: Colors.blueGrey,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text("Share"),
          leading: const Icon(
            Icons.share,
            color: Colors.orangeAccent,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
    return Drawer(
      shadowColor: icColor,
      child: drawerItems,
    );
  }
}
