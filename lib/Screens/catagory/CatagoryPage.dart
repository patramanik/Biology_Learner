// ignore_for_file: unnecessary_null_comparison, file_names, avoid_print

import 'package:blology_learner/Model/Catagory.dart';
import 'package:blology_learner/Screens/posts/postPage.dart';
// import 'package:blology_learner/Screens/view/view.dart';
import 'package:blology_learner/component/widgets/myDrawer.dart';
import 'package:blology_learner/services/catagoryApi.dart';
import 'package:flutter/material.dart';



class CatagoryPage extends StatefulWidget {
  const CatagoryPage({super.key});

  @override
  State<CatagoryPage> createState() => _CatagoryPageState();
}

class _CatagoryPageState extends State<CatagoryPage> {
  List<Catagory> catagory = [];

Future<void> fatchCatagory() async {
    try {
      List<Catagory> response = await CatagoryApi.getData();

      setState(() {
        catagory = response;
      });
    } catch (error) {
      print('Error fetching data: $error');
    }
  }
  @override
  void initState() {
    super.initState();
    fatchCatagory();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Catagory",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      drawer: const MyDrawer(),
      // bottomNavigationBar: const MyBottemNave(),
      body: SizedBox(
        child: Center(
          child: Catagory == null
              ? const CircularProgressIndicator()
              : ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: catagory.length,
                  itemBuilder: (context, index) {
                    final catagorys = catagory[index];
                    final name = catagorys.name;
                    final mataTitel = catagorys.matatitle;
                    final image = catagorys.image;
                    return InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PostPage()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Card(
                            shadowColor: Colors.teal,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Stack(
                              children: [
                                Row(
                                  children: [
                                    Center(
                                      child: ClipRRect(
                                        //borderRadius: BorderRadius.circular(10.0),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(10.0),
                                          bottomLeft: Radius.circular(10),
                                        ),
                                        child: Image.network(
                                          image,
                                          width: 130,
                                          height: 150,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 2,
                                            bottom: 2,
                                            left: 8.0,
                                            right: 8.0),
                                        child: Column(
                                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0,
                                                  left: 3.0,
                                                  right: 5.0,
                                                  bottom: 5.0),
                                              child: SizedBox(
                                                child: Text(
                                                  name,
                                                  textAlign: TextAlign.start,
                                                  style: const TextStyle(
                                                    fontSize: 22.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromARGB(
                                                        255, 23, 23, 23),
                                                  ),
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10.0,
                                            ),
                                            SizedBox(
                                              child: Text(mataTitel,
                                                textAlign: TextAlign.start,
                                                style: const TextStyle(
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black,
                                                ),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ));
                  },
                ),
        ),
      ),
    );
  }
}



// Scaffold(
//       appBar: AppBar(
//         title: const Center(
//           child: Text(
//             "Catagory",
//             style: TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ),
//       ),
//       drawer: const MyDrawer(),
//       // bottomNavigationBar: const MyBottemNave(),
//       body:   SizedBox(
//           child: Center(
//               child: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [
//             InkWell(
//                onTap: () {
//                   Navigator.pushReplacement(context,
//                       MaterialPageRoute(builder: (context) => const ViewPost()));
//                 },
//               child: const BlogCetagoryItem(),
//             ),
//             const BlogCetagoryItem(),
//             const BlogCetagoryItem(),
//             const BlogCetagoryItem(),
//             const BlogCetagoryItem(),
//             const BlogCetagoryItem(),
//             const BlogCetagoryItem(),
//           ],
//         ),
//       ))),
//     );