import 'package:flutter/material.dart';
import 'package:fruit_market/features/on%20Boarding/presentation/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, required this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageViewItem(
          title: "E-Shopping",
          sutitle: "explore top organic fruits & grabs them",
          url: "images/onboarding1.png",
        ),
        PageViewItem(
          title: "Delivery on the way",
          sutitle: "Get your order by speed delivery",
          url: "images/onboarding2.png",
        ),
        PageViewItem(
          title: "Delivery Arrived",
          sutitle: "Order is arrived at your place",
          url: "images/onboarding3.png",
        ),
      ],
    );
  }
}
