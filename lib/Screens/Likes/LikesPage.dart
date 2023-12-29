// ignore_for_file: file_names, unused_local_variable, avoid_print

import 'package:blology_learner/Model/BodyPost.dart';
import 'package:blology_learner/Provider/favouiter_provider.dart';
import 'package:blology_learner/Screens/view/view.dart';
import 'package:blology_learner/component/postItem.dart';
import 'package:blology_learner/component/widgets/CustomAppBar.dart';
import 'package:blology_learner/services/homeBodyApi.dart';
import 'package:provider/provider.dart';

import '../../component/widgets/myDrawer.dart';
import 'package:flutter/material.dart';

class LikesPage extends StatefulWidget {
  const LikesPage({Key? key}) : super(key: key);

  @override
  State<LikesPage> createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {
  List<BodyPostModel> licksPosts = [];
  List<int> selectedItem = [];

  Future<void> fetchBodyPosts() async {
    try {
      List<BodyPostModel> response = await HomeBodyApi.getData();

      setState(() {
        licksPosts = response;
      });
    } catch (error) {
      print('Error fetching body posts data: $error');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchBodyPosts();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final favouriteitemProvider = Provider.of<FavouriteItemProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CustomAppBar(),
        // Text(
        //   "Likes",
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontWeight: FontWeight.w500,
        //   ),
        // ),
      ),
      drawer: const MyDrawer(),
      body: SizedBox(
        child: Center(
          child: licksPosts.isEmpty
              ? const Center(child: Text("Empty!"))
              : ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: favouriteitemProvider.selectedItem.length,
                  itemBuilder: (context, index) {
                    if (index < licksPosts.length) {
                      final post = licksPosts[index];
                      final pId = post.id;
                      final name = post.postName;
                      final mataTitel = post.metaTitle;
                      final image = post.image;
                      final postContent = post.postContent;
                      final catagoryName = post.categoryName;
                      return Consumer<FavouriteItemProvider>(
                        builder: (context, value, child) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ViewPost(
                                    catagoryName: catagoryName,
                                    postName: name,
                                    mataTitle: mataTitel,
                                    postImages: image,
                                    content: postContent,
                                  ),
                                ),
                              );
                            },
                            child: PostItem(
                              image: image,
                              name: name,
                              matatitle: mataTitel,
                              categoryName: catagoryName,
                              child: IconButton(
                                icon: Icon(
                                  value.selectedItem.contains(pId)
                                      ? Icons.favorite
                                      : Icons.favorite_border_outlined,
                                  color: Colors.pink,
                                  size: 30,
                                ),
                                onPressed: () {
                                  if (value.selectedItem.contains(pId)) {
                                    value.removeItem(pId);
                                  } else {
                                    value.addItem(pId);
                                  }
                                },
                              ),
                            ),
                          );
                        },
                      );
                    } else {
                      return const SizedBox(); // handle out-of-bounds index
                    }
                  },
                ),
        ),
      ),
    );
  }
}
