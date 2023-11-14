import 'package:flutter/material.dart';
import 'package:fruit_market/core/constants.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/features/on%20Boarding/presentation/on_boarding_view.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3000));
    animation = Tween<double>(begin: .3, end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        const Spacer(),
        // AnimatedBuilder(
        //   animation: animation!,
        //   builder: (context, _) => Opacity(
        //     opacity: animation?.value,
        //     child: const Text(
        //       "Fruit Market",
        //       style: TextStyle(
        //         fontSize: 50,
        //         fontWeight: FontWeight.bold,
        //         color: Color.fromARGB(255, 255, 255, 255),
        //       ),
        //     ),
        //   ),
        // ),
        FadeTransition(
          opacity: animation!,
          child: const Text(
            "Fruit Market",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: textLightColor,
            ),
          ),
        ),
        const Spacer(),
        Image.asset("images/Fruits.png"),
      ],
    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const OnBoardingView(), transition: Transition.fade);
    });
  }
}
