import 'package:flutter/material.dart';
import 'package:weather_app/project_constants.dart';

class OtherInfo extends StatelessWidget {
  const OtherInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(
          right: 15.0, left: 15.0, bottom: 10.0, top: 10.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: Row(
              children: [
                Image.asset(
                  "images/${ProjectConst.detailInfosImagePath[6]}",
                  width: 40,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  ProjectConst.detailInfos[6],
                ),
                const Spacer(),
                Text(
                  ProjectConst.detailInfosDesc[6],
                  style: const TextStyle(),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1.0,
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: Row(
              children: [
                Image.asset(
                  "images/${ProjectConst.detailInfosImagePath[7]}",
                  width: 40,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(ProjectConst.detailInfos[7]),
                const Spacer(),
                Text(
                  ProjectConst.detailInfosDesc[7],
                  style: const TextStyle(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
