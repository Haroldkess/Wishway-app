import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';

import '../../../../widget/text.dart';

class DaysLeft extends StatelessWidget {
  const DaysLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 220,
          height: 5,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: TweenAnimationBuilder(
                  curve: Curves.fastOutSlowIn,
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: Duration(seconds: 4),
                  onEnd: () {},
                  builder: (context, double value, child) {
                    double val = value / 2.5;
                    return SizedBox(
                      width: 220,
                      child: LinearProgressIndicator(
                        backgroundColor: HexColor("#242830"),
                        value: val,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(primaryOrange),
                      ),
                    );
                  })),
        ),
        AppTextOverPass(
          text: "23 days left",
          fontWeight: FontWeight.w400,
          size: 12,
          color: HexColor("#929292"),
        ),
      ],
    );
  }
}
