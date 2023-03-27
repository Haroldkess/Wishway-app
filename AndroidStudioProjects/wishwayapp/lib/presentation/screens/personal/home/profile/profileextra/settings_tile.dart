import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';

import '../../../../../widget/text.dart';

class ProfileTile extends StatelessWidget {
  final String path;
  final String title;
  const ProfileTile({super.key, required this.path, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 364,
      height: 58,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: HexColor("#242830"),
          borderRadius: BorderRadius.circular(8),
          shape: BoxShape.rectangle),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  path,
                  color: HexColor("#929292"),
                ),
                const SizedBox(
                  width: 10,
                ),
                AppTextOverPass(
                  text: title,
                  fontWeight: FontWeight.w600,
                  size: 14,
                  align: TextAlign.center,
                  color: textLightColor,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SvgPicture.asset(
                "assets/icon/rightarrow.svg",
                color: HexColor("#929292"),
                height: 8,
                width: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
