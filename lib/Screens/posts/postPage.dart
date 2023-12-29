// ignore_for_file: file_names, unnecessary_null_comparison, non_constant_identifier_names, avoid_print


import 'package:blology_learner/Model/PostModel.dart';
import 'package:blology_learner/Provider/favouiter_provider.dart';
import 'package:blology_learner/Screens/view/view.dart';
import 'package:blology_learner/component/postItem.dart';
import 'package:blology_learner/component/widgets/CustomAppBar.dart';
import 'package:blology_learner/services/PostDataApi.dart';
// import 'package:blology_learner/services/postsApi.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostPage extends StatefulWidget {
  final int catagoryId;
  final String catagoryName;

  const PostPage(
      {Key? key, required this.catagoryId, required this.catagoryName})
      : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  List<PostModel> posts = [];
  List<int> selectedItem = [];

  @override
  void initState() {
    super.initState();
    fatchPosts(widget.catagoryId);
  }

  Future<void> fatchPosts(int catagoryId) async {
    try {
      List<PostModel> response = await PostsResponse.getData(catagoryId);

      setState(() {
        posts = response;
      });
    } catch (error) {
      print('Error fetching data: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    // final favouriteitemProvider = Provider.of<FavouriteItemProvider>(context);
    print("bild");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CustomAppBar(),
        // Text(
        //   "Post",
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontWeight: FontWeight.w500,
        //   ),
        // ),
      ),
      body: SizedBox(
        child: Center(
          child: PostModel == null
              ? const CircularProgressIndicator()
              : ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    final post = posts[index];
                    final pId = post.id;
                    final name = post.postName;
                    final mataTitel = post.metaTitle;
                    final image = post.image;
                    final postContent = post.postContent;
                    return Consumer<FavouriteItemProvider>(
                        builder: (context, value, child) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ViewPost(
                                catagoryName: widget.catagoryName,
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
                          categoryName: widget.catagoryName,
                          child: IconButton(
                            icon: Icon(
                              value.selectedItem.contains(pId)
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,

                              // Icons.favorite,
                              color: Colors.pink,
                              size: 30,
                            ),
                            onPressed: () {
                              if (value.selectedItem.contains(pId)) {
                                value.removeItem(pId);
                              } else {
                                value.addItem(pId);
                              }
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => const LikesPage(),
                              //   ),
                              // );
                            },
                          ),
                        ),
                      );
                    });
                  },
                ),
        ),
      ),
    );
  }
}
