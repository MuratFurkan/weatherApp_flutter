import 'package:flutter/material.dart';
import 'package:weather_app/widgets/current_day_card/current_day_card.dart';
import 'package:weather_app/widgets/custom_drawer/custom_drawer.dart';
import 'package:weather_app/widgets/detail_info_card/detail_info_card.dart';
import 'package:weather_app/widgets/other_info/other_info.dart';
import 'package:weather_app/widgets/title/title.dart';
import 'package:weather_app/widgets/weekly_weather_card/weekly_weathers_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key, required this.cityName});
  String cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(238, 255, 255, 255),
      extendBodyBehindAppBar: true,
      drawer: SafeArea(
        child: Drawer(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          child: CustomDrawer(cityName: cityName),
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
              ))
        ],
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppTitle(),
            CurrentDayCard(
              cityName: cityName,
            ),
            const SizedBox(
              height: 10.0,
            ),
            WeeklyWeatherCard(),
            const DetailInfoCard(),
            const OtherInfo(),
            Container(
              height: 100,
              margin: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("The Weather Channel"),
                  Text("Güncel 19/12 10:40")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
