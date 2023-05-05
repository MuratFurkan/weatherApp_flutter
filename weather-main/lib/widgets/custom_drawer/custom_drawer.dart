import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/screens/home_page.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({Key? key, required this.cityName}) : super(key: key);
  String cityName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: Colors.grey,
                  size: 35,
                )),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: const [
              Icon(
                Icons.star,
                color: Colors.blue,
                size: 30,
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                "Favori Konum",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.grey),
              ),
              Spacer(),
              Icon(Icons.info_outline)
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (builder) => HomePage(cityName: "Ankara"))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: cityName == "Ankara" ? Colors.blue : Colors.grey,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Ankara",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: cityName == "Ankara" ? Colors.blue : Colors.grey),
                ),
                SizedBox(
                  width: 120,
                ),
                Text(
                  "8°",
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Divider(
            thickness: 1.0,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: const [
              Icon(
                Icons.add_location_rounded,
                color: Colors.grey,
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                "Diğer Konumlar",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (builder) => HomePage(cityName: "İstanbul"))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: cityName == "İstanbul" ? Colors.blue : Colors.grey,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  "İstanbul",
                  style: TextStyle(
                      color:
                          cityName == "İstanbul" ? Colors.blue : Colors.grey),
                ),
                const SizedBox(
                  width: 120,
                ),
                const Text(
                  "14°",
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Color.fromARGB(255, 236, 236, 236),
                shape: StadiumBorder(),
                padding:
                    EdgeInsets.symmetric(horizontal: 65.0, vertical: 10.0)),
            child: const Text(
              "Konumları Yönet",
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          const Divider(
            thickness: 1.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, bottom: 20.0),
            child: Row(
              children: const [
                Icon(
                  Icons.campaign_rounded,
                  size: 35,
                ),
                SizedBox(
                  width: 30.0,
                ),
                Text(
                  "Yanlış konumu raporlayın",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Row(
              children: const [
                Icon(
                  Icons.question_mark,
                  size: 35,
                ),
                SizedBox(
                  width: 30.0,
                ),
                Text(
                  "Kullanım",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
