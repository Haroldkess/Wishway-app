import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/personal/home/showmap/show_map_screen.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';
import 'package:wishwayapp/presentation/widget/text.dart';
import 'package:wishwayapp/services/allNavigation.dart';

import '../../../../../../widget/spaces.dart';

class DidYouKnow extends StatelessWidget {
  const DidYouKnow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 380,
          height: 100,
          decoration: BoxDecoration(
              color: darkCard,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextOverPass(
                    text: "Do You Know? ",
                    fontWeight: FontWeight.w600,
                    size: 14,
                    color: textLightColor),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 270,
                  child: AppTextOverPass(
                    text:
                        "Wishway prime can save your business from supply chain infmation  ",
                    fontWeight: FontWeight.w300,
                    size: 12,
                    color: HexColor("#929292"),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    align: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
