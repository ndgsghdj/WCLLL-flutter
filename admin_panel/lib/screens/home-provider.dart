// import 'package:admin_panel/constants/constants.dart';
// import 'package:admin_panel/controller/MenuController.dart';
// import 'package:admin_panel/screens/home.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// class HomeProvider extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Admin Panel',
//       theme: ThemeData.dark().copyWith(
//         scaffoldBackgroundColor: bgColor,
//         textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
//             .apply(bodyColor: Colors.white),
//         canvasColor: secondaryColor,
//       ),
//       home: MultiProvider(
//         providers: [
//           ChangeNotifierProvider(
//             create: (context) => MenuController(),
//           ),
//         ],
//         child: HomePage(),
//       ),
//     );
//   }
// }
