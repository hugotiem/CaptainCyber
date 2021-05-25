import 'package:captain_cyber/constants/cyber_colors.dart';
import 'package:flutter/material.dart';

class AcitivitesList extends StatelessWidget {
  const AcitivitesList({Key? key, required this.data}) : super(key: key);

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    // print(data["tags"].toString().split("/")[0]);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: CyberColors.whiteGrey),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: CyberColors.whiteGrey),
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
              child: Image(
                fit: BoxFit.contain,
                image: AssetImage(data["image"].toString()),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          data["tags"].toString().split("/")[0].toUpperCase(),
                          style: const TextStyle(fontWeight: FontWeight.w800),
                        ),
                        Text(
                          data["tags"].toString().split("/")[1].toUpperCase(),
                          style: const TextStyle(fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
