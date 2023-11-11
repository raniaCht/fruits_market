import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        const Text(
          "Fruit Market",
          style: TextStyle(
            fontSize: 50,
            fontFamily: "AvenirNextLTPro",
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        const Spacer(),
        Image.asset("images/Fruits.png"),
      ],
    );
  }
}
