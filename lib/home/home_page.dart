import 'package:captain_cyber/constants/cyber_colors.dart';
import 'package:captain_cyber/constants/data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  final data = Data.data;

  HomePage({Key? key, required this.title}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CyberColors.darkBlue,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: _size.width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(36),
              topRight: Radius.circular(36),
            ),
            color: CyberColors.whiteGrey,
          ),
          child: Column(),
        ),
      ),
    );
  }
}
