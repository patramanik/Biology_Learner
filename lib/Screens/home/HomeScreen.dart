// // ignore_for_file: file_names, avoid_print, unnecessary_null_comparison

// import 'package:blology_learner/Model/BodyPost.dart';
// import 'package:blology_learner/Model/HomePostModel.dart';
// import 'package:blology_learner/Provider/favouiter_provider.dart';
// import 'package:blology_learner/Screens/view/view.dart';
// import 'package:blology_learner/component/blogItem.dart';
// import 'package:blology_learner/component/postItem.dart';
// import 'package:blology_learner/component/widgets/CustomAppBar.dart';
// import 'package:blology_learner/services/homeBodyApi.dart';
// import 'package:blology_learner/services/homePostApi.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../../component/widgets/myDrawer.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List<HomePostModel> homePosts = [];
//   List<BodyPostModel> bodyPosts = [];
//   bool isLoading = true; // Track loading state
//   List<int> selectedItem = [];

//   Future<void> fetchHomePosts() async {
//     try {
//       List<HomePostModel> response = await HomePostsApi.getData();

//       setState(() {
//         homePosts = response;
//         isLoading = false; // Data is loaded
//       });
//     } catch (error) {
//       print('Error fetching home posts data: $error');
//       setState(() {
//         isLoading = false; // Set loading to false even on error
//       });
//     }
//   }

//   Future<void> fetchBodyPosts() async {
//     try {
//       List<BodyPostModel> response = await HomeBodyApi.getData();

//       setState(() {
//         bodyPosts = response;
//       });
//     } catch (error) {
//       print('Error fetching body posts data: $error');
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     fetchHomePosts();
//     fetchBodyPosts();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;

//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const CustomAppBar(),
//         // const Text(
//         //   "Home",
//         //   style: TextStyle(
//         //     color: Colors.black,
//         //     fontWeight: FontWeight.w500,
//         //   ),
//         // ),
//       ),
//       drawer: const MyDrawer(),
//       body: SingleChildScrollView(
//         physics: const BouncingScrollPhysics(),
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [
//             // if (isLoading)
//             //   const CircularProgressIndicator()
//             // else
//             SizedBox(
//               width: width,
//               height: height / 2 - 100,
//               child: Center(
//                 child: HomePostModel == null
//                     ? const CircularProgressIndicator()
//                     : ListView.builder(
//                         itemCount: homePosts.length,
//                         physics:const BouncingScrollPhysics(),
//                         scrollDirection: Axis.horizontal,
//                         itemBuilder: (context, index) {
//                           final post = homePosts[index];
//                           final name = post.postName;
//                           final categoryName = post.categoryName;
//                           final metaTitle = post.metaTitle;
//                           final image = post.image;
//                           final postContent = post.postContent;
//                           final pId =post.id;

//                           return InkWell(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => ViewPost(
//                                     catagoryName: categoryName,
//                                     postName: name,
//                                     postImages: image,
//                                     content: postContent,
//                                     mataTitle: metaTitle,
//                                     pId:pId,
//                                   ),
//                                 ),
//                               );
//                             },
//                             child: Padding(
//                               padding: const EdgeInsets.all(20.0),
//                               child: BlogItem(
//                                 name: name,
//                                 catagoryName: categoryName,
//                                 image: image,
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//               ),
//             ),
//             SizedBox(
//               width: width,
//               height: height,
//               child: ListView.builder(
//                 itemCount: bodyPosts.length,
//                 physics: const BouncingScrollPhysics(),
//                 scrollDirection: Axis.vertical,
//                 itemBuilder: (context, index) {
//                   final bodyPost = bodyPosts[index];
//                   final pId = bodyPost.id;
//                   final name = bodyPost.postName;
//                   final categoryName = bodyPost.categoryName;
//                   final metaTitle = bodyPost.metaTitle;
//                   final image = bodyPost.image;
//                   final postContent = bodyPost.postContent;

//                   return Consumer<FavouriteItemProvider>(
//                       builder: (context, value, child) {
//                     return InkWell(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => ViewPost(
//                               catagoryName: categoryName,
//                               postName: name,
//                               mataTitle: metaTitle,
//                               postImages: image,
//                               content: postContent, pId: pId,
//                             ),
//                           ),
//                         );
//                       },
//                       child: PostItem(
//                         image: image,
//                         name: name,
//                         matatitle: metaTitle,
//                         categoryName: categoryName,
//                         child: IconButton(
//                           icon: Icon(
//                             value.selectedItem.contains(pId)
//                                 ? Icons.favorite
//                                 : Icons.favorite_border_outlined,

//                             // Icons.favorite,
//                             color: Colors.pink,
//                             size: 30,
//                           ),
//                           onPressed: () {
//                             if (value.selectedItem.contains(pId)) {
//                               value.removeItem(pId);
//                             } else {
//                               value.addItem(pId);
//                             }
//                             // Navigator.push(
//                             //   context,
//                             //   MaterialPageRoute(
//                             //     builder: (context) => const LikesPage(),
//                             //   ),
//                             // );
//                           },
//                         ),
//                       ),
//                     );
//                   });
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: unused_local_variable, file_names, avoid_print

import 'package:blology_learner/SharedPreferences/SharedPreferencesUtil.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:blology_learner/Model/HomePostModel.dart';
import 'package:blology_learner/Model/BodyPost.dart';
import 'package:blology_learner/Screens/view/view.dart';
import 'package:blology_learner/component/blogItem.dart';
import 'package:blology_learner/component/postItem.dart';
import 'package:blology_learner/component/widgets/CustomAppBar.dart';
import 'package:blology_learner/services/homeBodyApi.dart';
import 'package:blology_learner/services/homePostApi.dart';
import 'package:blology_learner/Provider/favouiter_provider.dart';
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
  List<int> selectedItem = [];

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
    loadSelectedItems();
  }

  Future<void> loadSelectedItems() async {
    List<int> loadedItems = await SharedPreferencesUtil.loadSelectedItems();
    setState(() {
      selectedItem = loadedItems;
    });
  }

  Future<void> saveSelectedItems() async {
    await SharedPreferencesUtil.saveSelectedItems(selectedItem);
  }

  Future<void> addItemToSelectedList(int newItem) async {
    await SharedPreferencesUtil.addItem(newItem);

    setState(() {
      selectedItem.add(newItem);
    });
  }

  Future<void> removeItemFromSelectedList(int removedItem) async {
    await SharedPreferencesUtil.removeItem(removedItem);

    setState(() {
      selectedItem.remove(removedItem);
    });
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CustomAppBar(),
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: height / 2 - 100,
              child: isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: homePosts.length,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final post = homePosts[index];
                        final name = post.postName;
                        final categoryName = post.categoryName;
                        final metaTitle = post.metaTitle;
                        final image = post.image;
                        final postContent = post.postContent;
                        final pId = post.id;

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
                                  pId: pId,
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
            SizedBox(
              height: height,
              child: ListView.builder(
                itemCount: bodyPosts.length,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  final bodyPost = bodyPosts[index];
                  final pId = bodyPost.id;
                  final name = bodyPost.postName;
                  final categoryName = bodyPost.categoryName;
                  final metaTitle = bodyPost.metaTitle;
                  final image = bodyPost.image;
                  final postContent = bodyPost.postContent;

                  return Consumer<FavouriteItemProvider>(
                    builder: (context, value, child) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ViewPost(
                                catagoryName: categoryName,
                                postName: name,
                                mataTitle: metaTitle,
                                postImages: image,
                                content: postContent,
                                pId: pId,
                              ),
                            ),
                          );
                        },
                        child: PostItem(
                          image: image,
                          name: name,
                          matatitle: metaTitle,
                          categoryName: categoryName,
                          child: IconButton(
                            icon: Icon(
                              selectedItem.contains(pId)
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              color: Colors.pink,
                              size: 30,
                            ),
                            onPressed: () {
                              if (selectedItem.contains(pId)) {
                                value.removeItem(pId);
                                removeItemFromSelectedList(pId);
                              } else {
                                value.addItem(pId);
                                addItemToSelectedList(pId);
                              }
                            },
                          ),
                        ),
                      );
                    },
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
