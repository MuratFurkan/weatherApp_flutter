import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class AllDayWeatherInfo extends StatelessWidget {
  const AllDayWeatherInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(8),
          itemCount: 23,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.all(5.0),
              margin: const EdgeInsets.only(right: 20.0),
              child: Column(
                children: [
                  Text(
                    "${0 + index}:00",
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Image.asset(
                    "images/cloud.PNG",
                    height: 25,
                  ),
                  const SizedBox(
                    height: 7.0,
                  ),
                  Text(Random().nextInt(30).toString()),
                  Row(
                    children: [
                      const Icon(
                        Icons.water_drop_outlined,
                        color: Colors.blue,
                        size: 12,
                      ),
                      Text(
                        "%${Random().nextInt(14)}",
                        style: const TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
