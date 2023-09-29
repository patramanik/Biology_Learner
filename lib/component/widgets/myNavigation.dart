
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:blology_learner/Screens/Likes/LikesPage.dart';
import 'package:blology_learner/Screens/Search/SearchPage.dart';
import 'package:blology_learner/Screens/catagory/CatagoryPage.dart';
import 'package:blology_learner/Screens/home/HomeScreen.dart';
import 'package:blology_learner/component/widgets/myDrawer.dart';
// ignore: must_be_immutable
class MyBottemNave extends StatefulWidget {
   MyBottemNave({
    super.key, 
    this.selectedIndex = 0,
    });
  int? selectedIndex;

  @override
  State<MyBottemNave> createState() => _MyBottemNaveState();
}

class _MyBottemNaveState extends State<MyBottemNave> {
  int _currentTabIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      widget.selectedIndex = index;
      _currentTabIndex = widget.selectedIndex!;
    });
  }

  @override
  void initState() {
    onItemTapped(widget.selectedIndex!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final kTabPages = <Widget>[
      const HomeScreen(),
      const LikesPage(),
      const SearchPage(),
      const CatagoryPage(),
    ];

    // ignore: unused_local_variable
    // Widget currentScreen = _currentTabIndex == 0 ? const HomeScreen() : _currentTabIndex == 1 ? const LikesPage() :_currentTabIndex == 2 ?const SearchPage():const CatagoryPage();
    
    final kBottmonNavBarItems = <SalomonBottomBarItem>[
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
      SalomonBottomBarItem(
        icon: const Icon(Icons.category_outlined),
        title: const Text("Category"),
        selectedColor: Colors.teal,
      ),
    ];
    assert(kTabPages.length == kBottmonNavBarItems.length);
    final bottomNavBar = SalomonBottomBar(
      items: kBottmonNavBarItems,
      currentIndex: _currentTabIndex,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(
      body: kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}

