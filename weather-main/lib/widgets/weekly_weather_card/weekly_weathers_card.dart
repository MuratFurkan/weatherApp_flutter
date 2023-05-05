import 'dart:math';

import 'package:flutter/material.dart';
import 'package:weather_app/project_constants.dart';
import 'package:weather_app/widgets/commen/more_info_button.dart';

class WeeklyWeatherCard extends StatelessWidget {
  WeeklyWeatherCard({Key? key}) : super(key: key);
  late String randomImagePath;
  String randomWeather() {
    int randomIndex = Random().nextInt(6);

    return ProjectConst.weatherType[randomIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(right: 10.0, left: 15.0, bottom: 15.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dün"),
                Text("12/5"),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),//kaydırmayı engeller
                padding: const EdgeInsets.all(8),
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  randomImagePath = randomWeather();
                  return Container(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 3,
                              child: Text(
                                ProjectConst.days[index],
                                style: TextStyle(fontWeight: FontWeight.w700),
                              )),
                          Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.water_drop,
                                      size: 10.0,
                                      color: Colors.blue[200],
                                    ),
                                    Text("%${index + 5}")
                                  ],
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "images/$randomImagePath",
                                      width: 30.0,
                                    ),
                                    Image.asset("images/$randomImagePath",
                                        width: 30.0)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Text(
                                "8°/°0",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              )),
                        ],
                      ));
                }),
          ),
          SizedBox(
            height: 15.0,
          ),
          MoreInfoButton()
        ],
      ),
    );
  }
}
