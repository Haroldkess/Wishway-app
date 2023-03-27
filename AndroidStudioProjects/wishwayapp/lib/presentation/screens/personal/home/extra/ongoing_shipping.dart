import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/personal/home/history/shipping_history.dart';
import 'package:wishwayapp/presentation/screens/personal/home/trackshipping/track_item_popup.dart';
import 'package:wishwayapp/presentation/widget/text.dart';
import 'package:wishwayapp/services/allNavigation.dart';

import '../../../../widget/spaces.dart';

class OngoingShipping extends StatelessWidget {
  const OngoingShipping({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppTextOverPass(
                text: "Ongoing Shippings",
                color: HexColor("#474747"),
                size: 24,
                fontWeight: FontWeight.w500,
              ),
              InkWell(
                onTap: () => PageRouting.pushToPage(
                    context, const ShippingHistoryScreen()),
                child: AppTextOverPass(
                  text: "History",
                  color: primaryOrange,
                  size: 14,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 21,
        ),
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
                                    image: AssetImage("assets/pic/prod.png"))),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppTextCabin(
                                text: "Ipone 14 promax",
                                fontWeight: FontWeight.w600,
                                size: 14,
                                color: textLightColor,
                              ),
                              AppTextOverPass(
                                text: "Tracking ID: N3667433455",
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
                              SvgPicture.asset("assets/icon/currentloc.svg"),
                              DottedLine(
                                dashLength: 5,
                                dashGapLength: 1,
                                lineThickness: 2,
                                direction: Axis.vertical,
                                lineLength: 32,
                                dashColor: HexColor("#B2B5C4"),
                              ),
                              SvgPicture.asset("assets/icon/location.svg"),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              AppTextOverPass(
                                text: "21 Bartus Street, Abuja Nigeria",
                                fontWeight: FontWeight.w400,
                                size: 14,
                                color: textLightColor,
                              ),
                              const SizedBox(
                                height: 32,
                              ),
                              AppTextOverPass(
                                text: "21 Bartus Street, Abuja Nigeria",
                                fontWeight: FontWeight.w400,
                                size: 14,
                                color: textLightColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () => trackItem(context),
                              child: AppTextOverPass(
                                text: "Track now",
                                color: primaryOrange,
                                size: 14,
                                fontWeight: FontWeight.w400,
                              ))
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
