import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/uiproviders/extras_provider.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';
import 'package:wishwayapp/presentation/widget/text.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    ExtraProvider size = Provider.of<ExtraProvider>(context, listen: false);
    return Container(
      // height: 160,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: primaryOrange,
                shape: BoxShape.circle,
                border: Border.all(
                    width: 3, style: BorderStyle.solid, color: primaryOrange),
                image: const DecorationImage(
                    image: AssetImage("assets/pic/dp.png"))),
          ),
          const AppSpaces(
            height: 10,
          ),
          AppTextOverPass(
            text: "Gwill ventures",
            fontWeight: FontWeight.w600,
            size: 14,
            align: TextAlign.center,
            color: textLightColor,
          ),
          const AppSpaces(
            height: 10,
          ),
          AppTextOverPass(
            text: "gwillventures@gmail.com",
            fontWeight: FontWeight.w400,
            size: 14,
            align: TextAlign.center,
            color: HexColor("#4F555C"),
          ),
          const AppSpaces(
            height: 10,
          ),
          AppButton(
            width: 132,
            height: 24,
            bordercolor: primaryOrange,
            backColor: Colors.transparent,
            onTap: () {},
            curves: 12,
            child: AppTextOverPass(
              text: "Business Account",
              fontWeight: FontWeight.w600,
              size: 12,
              align: TextAlign.center,
              color: primaryOrange,
            ),
          )
        ],
      ),
    );
  }
}
