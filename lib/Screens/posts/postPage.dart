// ignore_for_file: file_names, unnecessary_null_comparison

import 'package:blology_learner/Model/PostModel.dart';
import 'package:blology_learner/Screens/view/view.dart';
import 'package:blology_learner/component/postItem.dart';
import 'package:blology_learner/services/postsApi.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({
    super.key,
  });

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {

  List<PostModel> posts = [];

  Future<void> fatchPosts() async {
    try {
      List<PostModel> response = await PostsApi.getData();

      setState(() {
        posts = response;
      });
    } catch (error) {
      print('Error fetching data: $error');
    }
  }

  @override
  void initState() {
    super.initState();
    fatchPosts();
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
                    final catagorys = posts[index];
                    final name = catagorys.postName;
                    final mataTitel = catagorys.metaTitle;
                    final image = catagorys.image;
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ViewPost()));
                      },
                      child: PostItem(
                        image: image,
                        name: name,
                        matatitle: mataTitel,
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
