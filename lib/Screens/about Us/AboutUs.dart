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

// ignore_for_file: file_names, duplicate_ignore

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
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Our Teams",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 8.0),
                  child: SizedBox(
                    width: width,
                    child: const Text(
                      "Sagar Aryal, Founder and Head of Content Faith Mokobi,"
                      "Content Writer Anupama Sapkota, Content Writer"
                      " Laxmi Neupane, Content Writer Sushmita Baniya,"
                      " Content Writer Sanjogta Thapa Magar,"
                      "Content Writer Reeju Sharma, Content Writer "
                      "Dr. Frank O'Neill, Advisor Pratik Shrestha, Developer",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: TextButton(
                      style: TextButton.styleFrom(backgroundColor: Colors.green),
                      onPressed: null,
                      child: const Text(
                        "Contact Us",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height*0.02-5,
                ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: SizedBox(
                    width: width,
                     child:  Center(
                       child: Text(
                        "Developed by MANIK PATRA",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: width * 0.06,
                            fontStyle: FontStyle.italic),
                                     ),
                     ),
                   ),
                 ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
