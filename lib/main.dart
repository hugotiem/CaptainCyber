import 'package:captain_cyber/constants/cyber_colors.dart';
import 'package:flutter/material.dart';
import 'package:captain_cyber/home/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
        primaryColor: CyberColors.darkBlue,
      ),
      home: HomePage(title: 'Activities'),
    );
  }
}
