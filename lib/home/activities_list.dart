import 'package:flutter/material.dart';

class AcitivitesList extends StatelessWidget {
  const AcitivitesList({Key? key, required this.data}) : super(key: key);

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    //Size _size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Container(
            child: const Image(
              image: AssetImage("assets/illustration_1.jpeg"),
            ),
          ),
        ],
      ),
    );
  }
}
