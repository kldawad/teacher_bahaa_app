// // ignore_for_file: use_key_in_widget_constructors
// // ignore_for_file: prefer_const_constructors
// import 'package:flutter/material.dart';
// import 'package:teacher_bahaa_app/screens/screens/grades_screen/first_screen.dart';
// import 'package:teacher_bahaa_app/screens/screens/grades_screen/second_screen.dart';
// import 'package:teacher_bahaa_app/screens/screens/grades_screen/third_screen.dart';
//
// class MainScreen extends StatelessWidget {
//   const MainScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       initialIndex: 0,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Baha'a App"),
//           bottom: TabBar(
//             tabs: const [
//               Tab(
//                 child: Icon(Icons.list),
//               ),
//               Tab(text: "Second"),
//               Tab(text: "Third"),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             FirstScreen(),
//             SecondScreen(),
//             ThirdScreen(),
//           ],
//         ),
//       ),
//     );
//   }
// }
