import 'package:flutter/material.dart';
import 'package:fruit_market/features/splash/presentation/widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 234, 124),
      body: SplashBody(),
    );
  }
}
