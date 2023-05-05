import 'package:flutter/material.dart';

import '../../project_constants.dart';

class DetailInfoCard extends StatelessWidget {
  const DetailInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440,
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(8),
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(5.0),
            child: Row(
              children: [
                Image.asset(
                  "images/${ProjectConst.detailInfosImagePath[index]}",
                  width: 40,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text("${ProjectConst.detailInfos[index]}"),
                Spacer(),
                Text(
                  ProjectConst.detailInfosDesc[index],
                  style: TextStyle(),
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          thickness: 1.0,
        ),
      ),
    );
  }
}
