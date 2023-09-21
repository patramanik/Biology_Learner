import 'package:blology_learner/Screens/Likes/LikesPage.dart';
import 'package:blology_learner/Screens/Search/SearchPage.dart';
import 'package:blology_learner/Screens/catagory/CatagoryPage.dart';
import 'package:blology_learner/Screens/home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MyBottemNave extends StatefulWidget {
  const MyBottemNave({super.key});

  @override
  State<MyBottemNave> createState() => _MyBottemNaveState();
}

class _MyBottemNaveState extends State<MyBottemNave> {
  final _pagesData = [HomeScreen,LikesPage,SearchPage,CatagoryPage];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // final naveitem = ListView(
    //   children: [
    //     SalomonBottomBar(
    //       backgroundColor: const Color.fromARGB(255, 254, 255, 255),
    //       currentIndex: _currentIndex,
    //       onTap: (i) => setState(() => _currentIndex = i),
    //       items: [
    //         SalomonBottomBarItem(
    //           icon: const Icon(Icons.home),
    //           title: const Text("Home"),
    //           selectedColor: Colors.purple,
    //         ),

    //         SalomonBottomBarItem(
    //           icon: const Icon(Icons.favorite_border),
    //           title: const Text("Likes"),
    //           selectedColor: Colors.pink,
    //         ),
    //         SalomonBottomBarItem(
    //           icon: const Icon(Icons.search),
    //           title: const Text("Search"),
    //           selectedColor: Colors.orange,
    //         ),

    //         /// Profile
    //         SalomonBottomBarItem(
    //           icon: const Icon(Icons.category_outlined),
    //           title: const Text("Category"),
    //           selectedColor: Colors.teal,
    //         ),
    //       ]),
    //   ],
    // );

    return SalomonBottomBar(
          backgroundColor: const Color.fromARGB(255, 254, 255, 255),
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: Colors.purple,
            ),

            SalomonBottomBarItem(
              icon: const Icon(Icons.favorite_border),
              title: const Text("Likes"),
              selectedColor: Colors.pink,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.search),
              title: const Text("Search"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: const Icon(Icons.category_outlined),
              title: const Text("Category"),
              selectedColor: Colors.teal,
            ),
          ]);
  }
}
