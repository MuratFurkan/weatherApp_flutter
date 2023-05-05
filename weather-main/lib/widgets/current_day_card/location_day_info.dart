import 'package:flutter/material.dart';

class LocationDayInfo extends StatelessWidget {
  LocationDayInfo({Key? key, required this.cityName}) : super(key: key);
  String cityName;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.location_on),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              cityName,
              style: const TextStyle(fontSize: 25),
            )
          ],
        ),
        const Text(
          "19 Aralik Pzt 10:58",
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
