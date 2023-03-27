import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/personal/home/trackshipping/track_shipping_screen.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';
import 'package:wishwayapp/presentation/widget/text.dart';
import 'package:wishwayapp/services/allNavigation.dart';

import '../../../../widget/app_form.dart';
import '../../../../widget/spaces.dart';

Future<void> trackItem(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (
        context,
      ) {
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            backgroundColor: darkCard,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppTextOverPass(
                  text: "Track Shipping",
                  color: textLightColor,
                  size: 24,
                  fontWeight: FontWeight.w600,
                ),
                IconButton(
                    onPressed: () => PageRouting.popToPage(context),
                    icon: Icon(
                      Icons.clear,
                      color: textLightColor,
                    ))
              ],
            ),
            content: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const AppSpaces(
                        height: 15,
                      ),
                      Row(
                        children: [
                          AppTextMulish(
                            text: "Track ID",
                            size: 14,
                            fontWeight: FontWeight.w600,
                            color: HexColor("#D4D4D4"),
                          )
                        ],
                      ),
                      const AppSpaces(
                        height: 8,
                      ),
                      AppForm(
                        hint: "Enter tracking number",
                        borderRad: 12,
                        backColor: HexColor("#0C1017"),
                        height: 45,
                        fontSize: 14,
                        hintColor: HexColor("#BCBCBC"),
                      ),
                    ],
                  ),
                  AppButton(
                      width: 350,
                      height: 50,
                      bordercolor: primaryOrange,
                      backColor: primaryOrange,
                      onTap: () => PageRouting.pushToPage(
                          context, const TrackShippingScreen()),
                      curves: 8,
                      child: AppTextMulish(
                        text: "Track",
                        size: 19,
                        fontWeight: FontWeight.w700,
                        color: textLightColor,
                      ))
                ],
              ),
            ),
          );
        });
      });
}
