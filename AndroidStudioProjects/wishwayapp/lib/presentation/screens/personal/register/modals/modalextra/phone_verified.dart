import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../../../services/allNavigation.dart';
import '../../../../../constant/color_pallate.dart';
import '../../../../../widget/app_button.dart';
import '../../../../../widget/spaces.dart';
import '../../../../../widget/text.dart';
import '../../../login/loginextra/banner.dart';

phoneVerifiedModal(BuildContext context) async {
  return showModalBottomSheet(
      context: context,
      // isScrollControlled: true,
      backgroundColor: darkCard,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                          onTap: () => PageRouting.popToPage(context),
                          splashColor: darkCard,
                          highlightColor: darkCard,
                          focusColor: darkCard,
                          child: Center(
                              child: Icon(
                            Icons.clear,
                            color: textLightColor,
                          )))
                    ],
                  ),
                  // const AppSpaces(
                  //   height: 25,
                  // ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: HexColor("#0C1017")),
                            child: Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: SvgPicture.asset(
                                "assets/icon/done.svg",
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      AppTextOverPass(
                        text: "Phone number verified",
                        fontWeight: FontWeight.w600,
                        size: 24,
                        align: TextAlign.center,
                        color: textLightColor,
                      ),
                    ],
                  ),
                  AppButton(
                    width: 364,
                    height: 64,
                    bordercolor: primaryOrange,
                    backColor: primaryOrange,
                    onTap: () {},
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
