import 'package:flutter/material.dart';
import 'package:fruit_market/features/splash/presentation/splash_view.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const FruitMarket());
}

class FruitMarket extends StatelessWidget {
  const FruitMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: "AvenirNextLTPro"),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
