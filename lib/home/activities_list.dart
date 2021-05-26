import 'package:captain_cyber/constants/cyber_colors.dart';
import 'package:flutter/material.dart';

class AcitivitesList extends StatelessWidget {
  const AcitivitesList({Key? key, required this.data}) : super(key: key);

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    // print(data["tags"].toString().split("/")[0]);
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        border: Border.all(color: CyberColors.grey.withOpacity(0.2)),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                border: Border.all(color: CyberColors.grey.withOpacity(0.2)),
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
              margin: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          data["tags"].toString().split("/")[0].toUpperCase(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                            color: CyberColors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          data["tags"].toString().split("/")[1].toUpperCase(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                            color: CyberColors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Text(
                      data["title"].toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: CyberColors.darkBlue,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        const Icon(
                          Icons.timer,
                          color: CyberColors.grey,
                        ),
                        Text(
                          data["duration"].toString(),
                          style: const TextStyle(color: CyberColors.grey),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.star_border_outlined,
                          color: CyberColors.yellow,
                        ),
                        Text(
                          data["points"].toString() + "pts",
                          style: const TextStyle(color: CyberColors.yellow),
                        ),
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
