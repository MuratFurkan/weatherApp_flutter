import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 250,
      decoration: const BoxDecoration(
          image: DecorationImage(
              opacity: 0.7,
              image: AssetImage("images/bulut.png"),
              fit: BoxFit.cover)),
      child: const Align(
        alignment: Alignment.center,
        child: Text(
          "Hava",
          style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
