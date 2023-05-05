import 'package:flutter/material.dart';

class MoreInfoButton extends StatelessWidget {
  const MoreInfoButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        "Daha Fazla",
        style: TextStyle(color: Colors.black),
      ),
      style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
          backgroundColor: Color.fromARGB(255, 236, 236, 236),
          shape: StadiumBorder()),
    );
  }
}
