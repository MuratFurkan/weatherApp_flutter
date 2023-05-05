import 'package:flutter/material.dart';

class CurrentWeatherInfo extends StatelessWidget {
  const CurrentWeatherInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              "images/cloud.PNG",
              width: 60,
            ),
            const Text(
              "7°",
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.w300),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text(
              "Blutlu",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "8/0",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "Hissedilen Sıcaklık 7",
              style: TextStyle(color: Colors.grey),
            )
          ],
        )
      ],
    );
  }
}
