import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';

import '../../../../widget/text.dart';

class Trips extends StatelessWidget {
  const Trips({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextOverPass(
          text: "320/2000 Trips",
          fontWeight: FontWeight.w600,
          size: 20,
          color: textLightColor,
        ),
        const SizedBox(
          height: 23,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: primeModel
              .map((e) => Container(
                    height: 45,
                    width: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(
                            width: 1,
                            style: BorderStyle.solid,
                            color: HexColor("#242830")),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: [
                        AppTextOverPass(
                          text: e.sub,
                          fontWeight: FontWeight.w400,
                          size: 12,
                          color: HexColor("#929292"),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        AppTextOverPass(
                          text: e.title,
                          fontWeight: FontWeight.w600,
                          size: 14,
                          color: textLightColor,
                        ),
                      ],
                    ),
                  ))
              .toList(),
        )
      ],
    );
  }
}

class PrimeModel {
  String title;
  String sub;
  PrimeModel({required this.sub, required this.title});
}

List<PrimeModel> primeModel = [
  PrimeModel(sub: "Now", title: "33/500"),
  PrimeModel(sub: "Highway", title: "33/500"),
  PrimeModel(sub: "Broadway", title: "33/500"),
];
