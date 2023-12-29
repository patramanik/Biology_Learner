// ignore_for_file: file_names, avoid_print

import 'package:blology_learner/Screens/view/view.dart';
import 'package:blology_learner/component/postItem.dart';
import 'package:blology_learner/component/widgets/CustomAppBar.dart';
import 'package:blology_learner/component/widgets/myDrawer.dart';
import 'package:flutter/material.dart';

import '../../Model/BodyPost.dart';
import '../../services/homeBodyApi.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<BodyPostModel> searchPosts = [];
  List<BodyPostModel> filteredPosts = [];

  Future<void> fetchSearchPosts() async {
    try {
      List<BodyPostModel> response = await HomeBodyApi.getData();
      setState(() {
        searchPosts = response;
        filteredPosts = response;
      });
    } catch (error) {
      print('Error fetching body posts data: $error');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchSearchPosts();
  }

  void _searchList(String value) {
    setState(() {
      if (value.isNotEmpty) {
        filteredPosts = searchPosts
            .where((post) =>
                post.postName.toLowerCase().contains(value.toLowerCase()))
            .toList();
      } else {
        filteredPosts = searchPosts;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CustomAppBar(),
        // Text(
        //   "Search",
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontWeight: FontWeight.w500,
        //   ),
        // ),
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                onChanged: (value) {
                  _searchList(value);
                },
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  hintText: "Search",
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: ListView.builder(
                itemCount: filteredPosts.length,
                itemBuilder: (context, index) {
                  final post = filteredPosts[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ViewPost(
                              catagoryName: post.categoryName,
                              postName: post.postName,
                              postImages: post.image,
                              content: post.postContent,
                              mataTitle: post.metaTitle),
                        ),
                      );
                    },
                    child: PostItem(
                        image: post.image,
                        name: post.postName,
                        matatitle: post.metaTitle,
                        categoryName: post.categoryName),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
