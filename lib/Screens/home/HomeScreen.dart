// ignore_for_file: file_names, avoid_print, unnecessary_null_comparison

import 'package:blology_learner/Model/BodyPost.dart';
import 'package:blology_learner/Model/HomePostModel.dart';
import 'package:blology_learner/Screens/Likes/LikesPage.dart';
import 'package:blology_learner/Screens/view/view.dart';
import 'package:blology_learner/component/blogItem.dart';
import 'package:blology_learner/component/postItem.dart';
import 'package:blology_learner/services/homeBodyApi.dart';
import 'package:blology_learner/services/homePostApi.dart';
import 'package:flutter/material.dart';
import '../../component/widgets/myDrawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<HomePostModel> homePosts = [];
  List<BodyPostModel> bodyPosts = [];
  bool isLoading = true; // Track loading state

  Future<void> fetchHomePosts() async {
    try {
      List<HomePostModel> response = await HomePostsApi.getData();

      setState(() {
        homePosts = response;
        isLoading = false; // Data is loaded
      });
    } catch (error) {
      print('Error fetching home posts data: $error');
      setState(() {
        isLoading = false; // Set loading to false even on error
      });
    }
  }

  Future<void> fetchBodyPosts() async {
    try {
      List<BodyPostModel> response = await HomeBodyApi.getData();

      setState(() {
        bodyPosts = response;
      });
    } catch (error) {
      print('Error fetching body posts data: $error');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchHomePosts();
    fetchBodyPosts();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Home",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // if (isLoading)
            //   const CircularProgressIndicator()
            // else
            SizedBox(
              width: width,
              height: height / 2 - 100,
              child: Center(
                child: HomePostModel == null
                    ? const CircularProgressIndicator()
                    : ListView.builder(
                        itemCount: homePosts.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final post = homePosts[index];
                          final name = post.postName;
                          final categoryName = post.categoryName;
                          final metaTitle = post.metaTitle;
                          final image = post.image;
                          final postContent = post.postContent;

                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ViewPost(
                                    catagoryName: categoryName,
                                    postName: name,
                                    postImages: image,
                                    content: postContent,
                                    mataTitle: metaTitle,
                                  ),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: BlogItem(
                                name: name,
                                catagoryName: categoryName,
                                image: image,
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ),
            SizedBox(
              width: width,
              height: height,
              child: ListView.builder(
                itemCount: bodyPosts.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  final bodyPost = bodyPosts[index];
                  final name = bodyPost.postName;
                  final categoryName = bodyPost.categoryName;
                  final metaTitle = bodyPost.metaTitle;
                  final image = bodyPost.image;
                  final postContent = bodyPost.postContent;

                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ViewPost(
                            catagoryName: categoryName,
                            postName: name,
                            postImages: image,
                            content: postContent,
                            mataTitle: metaTitle,
                          ),
                        ),
                      );
                    },
                    child: PostItem(
                      categoryName: categoryName,
                      image: image,
                      name: name,
                      matatitle: metaTitle,
                      child: IconButton(
                        icon: const Icon(Icons.favorite,
                            color: Colors.pink, size: 30),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LikesPage(),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// import 'package:blology_learner/Model/BodyPost.dart';
// import 'package:blology_learner/Model/HomePostModel.dart';
// import 'package:blology_learner/Screens/view/view.dart';
// import 'package:blology_learner/component/blogItem.dart';
// import 'package:blology_learner/component/postItem.dart';
// import 'package:blology_learner/services/homeBodyApi.dart';
// import 'package:blology_learner/services/homePostApi.dart';
// import 'package:flutter/material.dart';
// import '../../component/widgets/myDrawer.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List<HomePostModel> hedePost = [];
//   List<BodyPostModel> bodyPost = [];

//   Future<void> fatchHedePost() async {
//     try {
//       List<HomePostModel> response = await HomePostsApi.getData();

//       setState(() {
//         hedePost = response;
//       });
//     } catch (error) {
//       print('Error fetching data: $error');
//     }
//   }

//   Future<void> fatchBodyPost() async {
//     try {
//       List<BodyPostModel> response = await HomeBodyApi.getData();

//       setState(() {
//         bodyPost = response;
//       });
//     } catch (error) {
//       print('Error fetching data: $error');
//     }
//   }
  

//   @override
//   void initState() {
//     super.initState();
//     fatchHedePost();
//     fatchBodyPost();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(
//           child: Text(
//             "Home",
//             style: TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ),
//       ),
//       drawer: const MyDrawer(),
//       body: SizedBox(
//           child: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [
//             SizedBox(
//               width: width,
//               height: height / 2 - 100,
//               child: ListView.builder(
//                 itemCount: hedePost.length,
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) {
//                   final post = hedePost[index];
//                   final name = post.postName;
//                   final catagoryName = post.categoryName;
//                   final mataTitel = post.metaTitle;
//                   final image = post.image;
//                   final postContent = post.postContent;
//                   return InkWell(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => ViewPost(
//                             catagoryName: catagoryName,
//                             postName: name,
//                             postImages: image,
//                             content: postContent,
//                             mataTitle: mataTitel,
//                           ),
//                         ),
//                       );
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: BlogItem(
//                         name: name,
//                         catagoryName: catagoryName,
//                         image: image,
//                       ),
//                     ),
//                   );
//                 },
//                 // children: const [
//                 //   Padding(padding: EdgeInsets.all(20.0), child: BlogItem()),
//                 //   Padding(padding: EdgeInsets.all(20.0), child: BlogItem()),
//                 //   Padding(padding: EdgeInsets.all(20.0), child: BlogItem()),
//                 // ],
//               ),
//             ),
//             SizedBox(
//               width: width,
//               height: height,
//               child: ListView.builder(
//                 itemCount: bodyPost.length,
//                 scrollDirection: Axis.vertical,
//                 itemBuilder: (context, index) {
//                   final bodyPosts = bodyPost[index];
//                   final name = bodyPosts.postName;
//                   final catagoryName = bodyPosts.categoryName;
//                   final mataTitel = bodyPosts.metaTitle;
//                   final image = bodyPosts.image;
//                   final postContent = bodyPosts.postContent;
//                   return InkWell(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) =>  ViewPost(
//                             catagoryName: catagoryName,
//                             postName: name,
//                             postImages: image,
//                             content: postContent,
//                             mataTitle: mataTitel,
//                           ),
//                         ),
//                       );
//                     },
//                     child:  PostItem(
//                       categoryName: catagoryName,
//                       image: image,
//                       name: name,
//                       matatitle: mataTitel,
//                     ),
//                   );
//                 },
//               ),
//             )
//             // const BlogCetagoryItem(),
//             // const BlogCetagoryItem(),
//             // const BlogCetagoryItem(),
//             // const BlogCetagoryItem(),
//             // const BlogCetagoryItem(),
//             // const BlogCetagoryItem(),
//           ],
//         ),
//       )),
//     );
//   }
// }

