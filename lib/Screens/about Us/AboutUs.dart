// // ignore_for_file: file_names

// import 'package:blology_learner/component/widgets/myDrawer.dart';
// import 'package:flutter/material.dart';

// class AboutUsPage extends StatelessWidget {
//   const AboutUsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     return WillPopScope(
//       onWillPop: () async {
//         final value = await showDialog<bool>(
//             context: context,
//             builder: (context) {
//               return AlertDialog(
//                 title: const Text('Alert'),
//                 content: const Text("Do you want to Exit."),
//                 actions: [
//                   ElevatedButton(
//                     onPressed: () => Navigator.of(context).pop(false),
//                     child: const Text("No"),
//                   ),
//                   ElevatedButton(
//                     onPressed: () => Navigator.of(context).pop(true),
//                     child: const Text(
//                       "Exit",
//                       style: TextStyle(color: Colors.red),
//                     ),
//                   ),
//                 ],
//               );
//             });

//         if (value != null) {
//           return Future.value(value);
//         } else {
//           return Future.value(false);
//         }
//       },
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Center(
//             child: Text(
//               "About Us",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ),
//         ),
//         drawer: const MyDrawer(),
//         body: SizedBox(
//           child: Container(
//             height: height,
//             width: width,
//             decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                     colors: [
//                   Color(0xff764ba2),
//                   Color(0xff667eea),
//                 ],
//                     begin: FractionalOffset.topLeft,
//                     end: FractionalOffset.bottomRight)),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     height: 150,
//                     width: width,
//                     decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(15.0)),
//                       color: Colors.white,
//                     ),
//                     child: const Padding(
//                       padding: EdgeInsets.only(top: 9, left: 20, right: 8),
//                       child: Text(
//                         "Biology Learner is an educational"
//                         " application related to Biology"
//                         " (microbiology, bacteriology, virology, parasitology, mycology, immunology, etc.)"
//                         " and different other branches of biology with an aim to provide study"
//                         " notes to undergraduate and graduate students.",
//                         style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w400,
//                             color: Colors.teal),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// ignore: file_names
import 'package:blology_learner/component/widgets/myDrawer.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async {
        final value = await showDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Alert'),
                content: const Text("Do you want to Exit."),
                actions: [
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: const Text("No"),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: const Text(
                      "Exit",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              );
            });

        if (value != null) {
          return Future.value(value);
        } else {
          return Future.value(false);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "About Us",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        drawer: const MyDrawer(),
        body: SizedBox(
          child: Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                  Color(0xff764ba2),
                  Color(0xff667eea),
                ],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 9, left: 20, right: 8),
                      child: Text(
                        "Biology Learner is an educational"
                        " application related to Biology"
                        " (microbiology, bacteriology, virology, parasitology, mycology, immunology, etc.)"
                        " and different other branches of biology with an aim to provide study"
                        " notes to undergraduate and graduate students.",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.teal),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    right: 50,
                  ), // color: Colors.red,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white,
                        width: 3.0,
                      ),
                    ),
                  ),

                  child: const Padding(
                    padding: EdgeInsets.only(top: 70),
                    child: Text(
                      "Our Teams",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Expanded(
                  child: Text(
                    "Sagar Aryal, Founder and Head of Content\n Faith Mokobi, Content Writer\n Anupama Sapkota, Content Writer\n Laxmi Neupane, Content Writer\n Sushmita Baniya, Content Writer\n Sanjogta Thapa Magar, Content Writer\n Reeju Sharma, Content Writer \n Dr. Frank O'Neill, Advisor \n Pratik Shrestha, Developer",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Container(
                  // color: Colors.pink,
                  // height: 100,
                  padding: const EdgeInsets.only(bottom: 90, right: 100),

                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: null,
                    child: const Text(
                      "Contact Us",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Developed by ESign Technology",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
