// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AppBerMain extends StatelessWidget {
  const AppBerMain({super.key});

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
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text("Likes"),
          leading: const Icon(
            Icons.favorite_border,
            color: Colors.pink,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text("Category"),
          leading: const Icon(
            Icons.category_outlined,
            color: Colors.teal,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text("Category"),
          leading: const Icon(
            Icons.category_outlined,
            color: Colors.teal,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Home",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
          ),
        ),
      ),
      drawer: Drawer(
        shadowColor: icColor,
        child: drawerItems,
      ),
    );
  }
}
