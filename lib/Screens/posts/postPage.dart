// ignore_for_file: file_names, unnecessary_null_comparison, non_constant_identifier_names, avoid_print

import 'package:blology_learner/Model/PostModel.dart';
import 'package:blology_learner/Screens/view/view.dart';
import 'package:blology_learner/component/postItem.dart';
import 'package:blology_learner/services/PostDataApi.dart';
// import 'package:blology_learner/services/postsApi.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Post",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
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
                    final name = post.postName;
                    final mataTitel = post.metaTitle;
                    final image = post.image;
                    final postContent = post.postContent;
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
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
