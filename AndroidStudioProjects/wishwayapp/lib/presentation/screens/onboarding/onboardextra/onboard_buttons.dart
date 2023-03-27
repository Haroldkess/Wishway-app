import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';

class OnboardingButton extends StatelessWidget {
  VoidCallback isClicked;
  Color color;
  Color iconColor;
  bool isRight;
  OnboardingButton(
      {super.key,
      required this.isClicked,
      required this.iconColor,
      required this.color,
      required this.isRight});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: isClicked,
        splashColor: backgroundColor,
        highlightColor: backgroundColor,
        focusColor: backgroundColor,
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              border: Border.all(
                  color: isRight == false ? primaryOrange : color,
                  width: 1,
                  style: BorderStyle.solid)),
          child: Center(
            child: isRight
                ? SvgPicture.asset(
                    "assets/icon/right_arrow.svg",
                    color: iconColor,
                  )
                : SvgPicture.asset(
                    "assets/icon/leftarrow.svg",
                    color: iconColor,
                  ),
          ),
        ));
  }
}
