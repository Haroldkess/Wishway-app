import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';
import 'package:wishwayapp/presentation/widget/text.dart';

import '../../../../../widget/spaces.dart';

class UploadPackageImage extends StatelessWidget {
  const UploadPackageImage({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      radius: Radius.circular(12),
      dashPattern: [3, 1],
      strokeWidth: 1,
      borderType: BorderType.RRect,
      strokeCap: StrokeCap.butt,
      color: primaryOrange,
      padding: EdgeInsets.all(6),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        child: Container(
          height: 265,
          width: 345,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/icon/upload.svg"),
                const AppSpaces(
                  height: 20,
                ),
                AppTextOverPass(
                  text: "Upload an image of the item",
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: HexColor("#474747"),
                ),
                const AppSpaces(
                  height: 20,
                ),
                AppButton(
                  width: 150,
                  height: 48,
                  bordercolor: HexColor("#474747"),
                  backColor: Colors.transparent,
                  onTap: () {},
                  curves: 12,
                  child: AppTextOverPass(
                    text: "Choose File",
                    size: 16,
                    fontWeight: FontWeight.w600,
                    color: HexColor("#929292"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
