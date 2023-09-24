// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../component/widgets/myDrawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: () async {
        final value = await showDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Alert'),
                content: const Text("Do you want to Exit."),
                actions: [
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: const Text("No"),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: const Text("Exit"),
                  ),
                ],
              );
            });

        if (value != null) {
          return Future.value(value);
        } else {
          return Future.value(false);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Home",
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        drawer: const MyDrawer(),
        // bottomNavigationBar: const MyBottemNave(),
        body: const SizedBox(child: Center(child: Text("Home"))),
      ),
    );
  }
}
