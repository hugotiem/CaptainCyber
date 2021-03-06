import 'package:captain_cyber/constants/cyber_colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AcitivitesList extends StatelessWidget {
  const AcitivitesList({Key? key, required this.data}) : super(key: key);

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    // data
    String tags = data["tags"].toString();
    String img = data["image"].toString();
    String title = data["title"].toString();
    String duration = data["duration"].toString();
    String pts = data["points"].toString();
    String modulesCompleted = data["modulesCompleted"].toString();

    double percent =
        double.parse(modulesCompleted[0]) / double.parse(modulesCompleted[2]);

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        border: Border.all(color: CyberColors.grey.withOpacity(0.2)),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Image(
                fit: BoxFit.contain,
                image: AssetImage(img),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: getTagsWidget(tags),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 23,
                        color: CyberColors.darkBlue,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: <Widget>[
                        const Icon(
                          Icons.timer,
                          color: CyberColors.grey,
                        ),
                        Text(
                          duration,
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
                          pts + "pts",
                          style: const TextStyle(
                            color: CyberColors.yellow,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Text(
                          modulesCompleted,
                          style: const TextStyle(
                            color: CyberColors.blue,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: LinearPercentIndicator(
                          lineHeight: 6,
                          percent: percent,
                          progressColor: percent == 1
                              ? CyberColors.green
                              : CyberColors.blue,
                          backgroundColor: CyberColors.whiteGrey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getTagsWidget(String tags) {
    List<String> elems = tags.split("/");
    List<Widget> children = [];

    for (String elem in elems) {
      children.add(Text(
        elem.toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.w800,
          color: CyberColors.grey,
        ),
      ));
      children.add(const SizedBox(
        width: 10,
      ));
    }
    return children;
  }
}
