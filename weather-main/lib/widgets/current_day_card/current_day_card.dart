import 'package:flutter/material.dart';
import 'package:weather_app/widgets/commen/more_info_button.dart';
import 'package:weather_app/widgets/current_day_card/all_day_weather.dart';
import 'package:weather_app/widgets/current_day_card/current_weather_info.dart';
import 'package:weather_app/widgets/current_day_card/location_day_info.dart';

class CurrentDayCard extends StatelessWidget {
  CurrentDayCard({super.key, required this.cityName});
  String cityName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(
        top: 10.0,
        left: 15.0,
        right: 15.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          LocationDayInfo(cityName: cityName),
          const CurrentWeatherInfo(),
          const AllDayWeatherInfo(),
          const MoreInfoButton()
        ],
      ),
    );
  }
}
