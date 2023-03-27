import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/personal/home/trackshipping/track_shipping_screen.dart';
import 'package:wishwayapp/presentation/widget/app_search.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';
import 'package:wishwayapp/presentation/widget/text.dart';
import 'package:wishwayapp/services/allNavigation.dart';

class TrackYourPackage extends StatelessWidget {
  const TrackYourPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
   //   onTap: () => PageRouting.pushToPage(context, const TrackShippingScreen()),
      child: Container(
        width: 380,
        height: 185,
        decoration: BoxDecoration(
            color: darkCard,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppTextOverPass(
                      text: "Track your package",
                      fontWeight: FontWeight.w600,
                      size: 24,
                      color: textLightColor,
                    ),
                    AppTextOverPass(
                      text: "Please enter your tracking number",
                      fontWeight: FontWeight.w400,
                      size: 14,
                      color: textGreyColor,
                    ),
                  ],
                ),
              ),
              const AppSpaces(
                height: 20,
              ),
              AppSearch(
                suffix: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: primaryOrange,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(
                      "assets/icon/search-normal.svg",
                      color: textLightColor,
                    ),
                  ),
                ),
                hint: "Tracking number",
                hintColor: HexColor("#474747"),
                backColor: backgroundColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
