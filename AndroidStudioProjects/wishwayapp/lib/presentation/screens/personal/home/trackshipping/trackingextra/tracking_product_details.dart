import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/personal/home/history/shipping_history.dart';
import 'package:wishwayapp/presentation/screens/personal/home/showmap/show_map_screen.dart';
import 'package:wishwayapp/presentation/screens/personal/home/trackshipping/track_item_popup.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';
import 'package:wishwayapp/presentation/widget/text.dart';
import 'package:wishwayapp/services/allNavigation.dart';

import '../../../../../widget/spaces.dart';

class TrackingProductDetails extends StatelessWidget {
  const TrackingProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 380,
          //height: 220,
          decoration: BoxDecoration(
              color: darkCard,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 22,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 51,
                            width: 51,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/pic/Rectangle 4004.png"))),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppTextCabin(
                                text: "Rice and Chicken",
                                fontWeight: FontWeight.w600,
                                size: 14,
                                color: textLightColor,
                              ),
                              AppTextOverPass(
                                text: "Food ",
                                fontWeight: FontWeight.w400,
                                size: 14,
                                color: HexColor("#474747"),
                              ),
                              AppTextOverPass(
                                text: "40kg ",
                                fontWeight: FontWeight.w400,
                                size: 14,
                                color: HexColor("#474747"),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const AppSpaces(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              SvgPicture.asset("assets/icon/currentloc.svg",
                                  color: primaryOrange),
                              DottedLine(
                                dashLength: 5,
                                dashGapLength: 1,
                                lineThickness: 2,
                                direction: Axis.vertical,
                                lineLength: 32,
                                dashColor: HexColor("#B2B5C4"),
                              ),
                              SvgPicture.asset("assets/icon/location.svg",
                                  color: primaryOrange),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppTextOverPass(
                                      text: "21 Bartus Street, Abuja Nigeria",
                                      fontWeight: FontWeight.w400,
                                      size: 14,
                                      color: textLightColor,
                                    ),
                                    AppTextOverPass(
                                      text: "Pick up 12:05PM",
                                      fontWeight: FontWeight.w400,
                                      size: 12,
                                      color: HexColor("#8E92A8"),
                                    ),
                                  ]),
                              const SizedBox(
                                height: 15,
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppTextOverPass(
                                      text: "21 Bartus Street, Abuja Nigeria",
                                      fontWeight: FontWeight.w400,
                                      size: 14,
                                      color: textLightColor,
                                    ),
                                    AppTextOverPass(
                                      text: "Drop off 12:28PM",
                                      fontWeight: FontWeight.w400,
                                      size: 12,
                                      color: HexColor("#8E92A8"),
                                    ),
                                  ]),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppTextOverPass(
                            text: "Tue, 23 Feb 2020 12:00PM",
                            color: HexColor("#8E92A8"),
                            size: 14,
                            fontWeight: FontWeight.w400,
                          )
                        ],
                      ),
                      const AppSpaces(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppButton(
                            width: 158,
                            height: 32,
                            bordercolor: primaryOrange,
                            backColor: Colors.transparent,
                            onTap: () => PageRouting.pushToPage(
                                context, const ShowMapScreen()),
                            curves: 5,
                            child: AppTextOverPass(
                              text: "Show on Map",
                              fontWeight: FontWeight.w700,
                              size: 14,
                              color: primaryOrange,
                            ),
                          )
                        ],
                      ),
                      const AppSpaces(
                        height: 20,
                      ),
                    ],
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
