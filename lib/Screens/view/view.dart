// import 'package:blology_learner/component/widgets/myDrawer.dart';
import 'package:blology_learner/Provider/favouiter_provider.dart';
import 'package:blology_learner/Screens/Likes/LikesPage.dart';
import 'package:blology_learner/Screens/commind/postCommint.dart';
import 'package:blology_learner/SharedPreferences/SharedPreferencesUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:provider/provider.dart';

class ViewPost extends StatefulWidget {
  final int pId;
  final String catagoryName;
  final String postName;
  final String postImages;
  final String mataTitle;
  final String content;

  const ViewPost({
    Key? key,
    required this.catagoryName,
    required this.postName,
    required this.postImages,
    required this.content,
    required this.mataTitle,
    required this.pId,
  }) : super(key: key);

  @override
  State<ViewPost> createState() => _ViewPostState();
}

class _ViewPostState extends State<ViewPost> {
  List<int> selectedItem = [];

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
  void initState() {
    super.initState();
    loadSelectedItems();
  }


  @override
  Widget build(BuildContext context) {
    final postcontent = widget.content;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Consumer<FavouriteItemProvider>(builder: (context, value, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.postName,
            style: const TextStyle(fontWeight: FontWeight.w500),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        // drawer: const MyDrawer(),
        body: SizedBox(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: height / 2 - 130,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: height / 2 - 180,
                        // color: Colors.amberAccent,
                        child: Center(
                          child: ClipRRect(
                            child: Image.network(
                              widget.postImages,
                              fit: BoxFit.fill,
                              height: height / 2 - 180,
                              width: width,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 20,
                        top: 10,
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(163, 0, 150, 135),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              widget.catagoryName,
                              // "Category",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        right: 10,
                        // top: 220,
                        bottom: 9,
                        child: Container(
                          height: 80.0,
                          width: width - 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 9.0,
                                  offset: Offset(
                                    0,
                                    2,
                                  ),
                                  color: Colors.grey,
                                  blurStyle: BlurStyle.normal),
                            ],
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: IconButton(
                                  icon: Icon(
                                      value.selectedItem.contains(widget.pId)
                                          ? Icons.favorite
                                          : Icons.favorite_border_outlined,
                                      color: Colors.pink,
                                      size: 40),
                                  onPressed: () {
                                    if (selectedItem
                                        .contains(widget.pId)) {
                                      value.removeItem(widget.pId);
                                      removeItemFromSelectedList(widget.pId);
                                    } else {
                                      value.addItem(widget.pId);
                                      addItemToSelectedList(widget.pId);
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const LikesPage(),
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                              const VerticalDivider(
                                width: 5,
                                thickness: 3,
                                color: Colors.black45,
                                indent: 10,
                                endIndent: 10,
                              ),
                              Expanded(
                                child: IconButton(
                                  icon: const Icon(Icons.comment,
                                      color: Colors.teal, size: 40),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const PostApiComment(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              const VerticalDivider(
                                width: 5,
                                thickness: 3,
                                color: Colors.black45,
                                indent: 10,
                                endIndent: 10,
                              ),
                              const Expanded(
                                  child: Icon(
                                Icons.share,
                                color: Colors.blue,
                                size: 40,
                              )),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    // // height: height,
                    width: width,
                    // color: Colors.pink,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            widget.postName,
                            // "Bacillariophyta : An Overview",
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: HtmlWidget(postcontent),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
