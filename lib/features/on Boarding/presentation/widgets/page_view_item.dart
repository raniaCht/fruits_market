import 'package:flutter/material.dart';
import 'package:fruit_market/core/constants.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/core/widgets/space_widget.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, this.title, this.sutitle, this.url});
  final String? url;
  final String? title;
  final String? sutitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(value: 20),
        SizedBox(
          height: SizeConfig.defaultSize! * 20,
          child: Image.asset(url!),
        ),
        const VerticalSpace(value: 5),
        Text(
          title!,
          style: const TextStyle(
            color: textDarkColor,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        const VerticalSpace(value: 1.5),
        Text(
          sutitle!,
          style: const TextStyle(
            color: textDarkColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
