import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/model/ui_model.dart';
import 'package:wishwayapp/presentation/screens/personal/home/sendpackage/orderdetails/order_details_screen.dart';
import 'package:wishwayapp/presentation/widget/app_form.dart';

import '../../../../../../services/allNavigation.dart';
import '../../../../../constant/color_pallate.dart';
import '../../../../../widget/app_button.dart';
import '../../../../../widget/spaces.dart';
import '../../../../../widget/text.dart';
import '../../../login/loginextra/banner.dart';

rideModal(BuildContext context) async {
  return showModalBottomSheet(
      context: context,
      // isScrollControlled: true,
      backgroundColor: darkCard,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Container(
              height: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      AppTextOverPass(
                        text: "Choose your preferred Ride",
                        fontWeight: FontWeight.w600,
                        size: 24,
                        align: TextAlign.center,
                        color: textLightColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // const AppSpaces(
                  //   height: 25,
                  // ),
                  Column(
                      children: riderOptions
                          .map((e) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: ListTile(
                                  leading: SvgPicture.asset(e.iconPath),
                                  title: Row(
                                    children: [
                                      AppTextOverPass(
                                        text: e.title,
                                        fontWeight: FontWeight.w600,
                                        size: 24,
                                        align: TextAlign.center,
                                        color: textLightColor,
                                      ),
                                    ],
                                  ),
                                  subtitle: Row(
                                    children: [
                                      AppTextOverPass(
                                        text: e.sub,
                                        fontWeight: FontWeight.w400,
                                        size: 13,
                                        align: TextAlign.center,
                                        color: HexColor("#929292"),
                                      ),
                                    ],
                                  ),
                                  trailing: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      AppTextOverPass(
                                        text: e.amount,
                                        fontWeight: FontWeight.w500,
                                        size: 14,
                                        align: TextAlign.center,
                                        color: textLightColor,
                                      ),
                                      AppTextOverPass(
                                        text: e.type,
                                        fontWeight: FontWeight.w400,
                                        size: 12,
                                        align: TextAlign.center,
                                        color: HexColor("#929292"),
                                      ),
                                    ],
                                  ),
                                ),
                              ))
                          .toList()),

                  AppButton(
                    width: 364,
                    height: 64,
                    bordercolor: primaryOrange,
                    backColor: primaryOrange,
                    onTap: () => PageRouting.pushToPage(
                        context, const OrderDetailsScreen()),
                    curves: 5,
                    child: AppTextOverPass(
                      text: "Continue",
                      color: textLightColor,
                      size: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          ));
}
