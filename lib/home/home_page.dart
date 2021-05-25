import 'package:captain_cyber/constants/cyber_colors.dart';
import 'package:captain_cyber/constants/data.dart';
import 'package:captain_cyber/home/activities_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String title;

  HomePage({Key? key, required this.title}) : super(key: key);
  @override
  final List<Map<String, Object>> data = Data.data;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CyberColors.darkBlue,
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          width: _size.width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(36),
              topRight: Radius.circular(36),
            ),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: childrenBuilder("Training"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> childrenBuilder(String type) {
    List<Widget> children = [];
    children.add(Container(
      margin: const EdgeInsets.only(top: 20, bottom: 10),
      child: Text(
        type.toUpperCase(),
        style: const TextStyle(fontWeight: FontWeight.w800),
      ),
    ));
    for (Map<String, Object> element in data) {
      if (element.containsValue(type)) {
        children.add(AcitivitesList(
          data: element,
        ));
      }
    }
    return children;
  }
}
