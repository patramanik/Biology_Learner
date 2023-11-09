
import 'dart:convert';
import 'dart:async';
import 'package:blology_learner/Screens/view/view.dart';
import 'package:blology_learner/component/widgets/myDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// import '../../component/BlogCetagoryItem.dart';

class CatagoryPage extends StatefulWidget {
  const CatagoryPage({super.key});

  @override
  State<CatagoryPage> createState() => _CatagoryPageState();
}

class _CatagoryPageState extends State<CatagoryPage> {
  Map<String, dynamic>? dataMape;
  List<dynamic>? donedataMape;
  Future getData() async {
    http.Response response;
    response = await http.get(Uri.parse('http://127.0.0.1:8000/api/catagorys'));

    if (response.statusCode == 200) {
      setState(() {
        dataMape = jsonDecode(response.body);
        donedataMape = dataMape!['catagorys'];
        print(donedataMape);
      });
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
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
          child: donedataMape == null
              ? const CupertinoActivityIndicator()
              : ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: donedataMape!.length,
                  itemBuilder: (context, index) {
                    return  InkWell(
               onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const ViewPost()));
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
                      donedataMape![index]['image'],
                      width: 130,
                      height: 150,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                 Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 2, bottom: 2, left: 8.0, right: 8.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0,left: 3.0,right: 5.0,bottom: 5.0),
                          child: SizedBox(
                            child: Text(
                              donedataMape![index]['name'],
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 23, 23, 23),
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                         SizedBox(
                          child: Text(
                            donedataMape![index]['mata_title'],
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
            const Positioned(
              right: 10,
              top: 7,
                child: SizedBox(
              child: Icon(
                Icons.favorite,
                color: Colors.pinkAccent,
                size: 35,
              ),
            ))
          ],
        ),
      ),
    )
            );
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