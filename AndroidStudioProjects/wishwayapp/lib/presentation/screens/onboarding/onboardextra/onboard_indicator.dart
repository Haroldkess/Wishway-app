import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';

import '../../../uiproviders/extras_provider.dart';

class OnboardingIndicator extends StatefulWidget {
  const OnboardingIndicator({super.key});

  @override
  State<OnboardingIndicator> createState() => _OnboardingIndicatorState();
}

class _OnboardingIndicatorState extends State<OnboardingIndicator> {
  @override
  Widget build(BuildContext context) {
    ExtraProvider index = context.watch<ExtraProvider>();
    return Row(
      children: [
        indicate(context, 5, index.index == 0 ? true : false),
        const AppSpaces(
          width: 4,
        ),
        indicate(context, 5, index.index == 1 ? true : false),
        const AppSpaces(
          width: 4,
        ),
        indicate(context, 5, index.index == 2 ? true : false),
      ],
    );
  }

  Container indicate(BuildContext context, double width, bool isShown) {
    return Container(
      height: 5,
      width: isShown ? 20 : 5,
      decoration: BoxDecoration(
          color: isShown ? primaryOrange : darkCard,
          shape: isShown ? BoxShape.rectangle : BoxShape.circle,
          borderRadius: isShown ? BorderRadius.circular(5) : null),
    );
  }
}
