import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/widget/pin_modal.dart';
import 'package:wishwayapp/presentation/widget/verify_form.dart';

import '../../../../../../services/allNavigation.dart';
import '../../../../../constant/color_pallate.dart';
import '../../../../../widget/app_button.dart';
import '../../../../../widget/spaces.dart';
import '../../../../../widget/text.dart';
import '../../../../business/businesshome/business_home_screen.dart';
import '../../../login/loginextra/banner.dart';

resetPinModal(BuildContext context) async {
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
                
                      AppTextOverPass(
                        text: "Reset your PIN",
                        fontWeight: FontWeight.w600,
                        size: 24,
                        align: TextAlign.center,
                        color: textLightColor,
                      ),

                    SizedBox(height: 10,),
                     AppTextOverPass(
                        text: "Enter your new wallet pin",
                        fontWeight: FontWeight.w600,
                        size: 16,
                        align: TextAlign.center,
                        color: HexColor("#929292"),
                      ),
                    ],
                  ),

                  PinModal(),
                  AppButton(
                    width: 364,
                    height: 64,
                    bordercolor: primaryOrange,
                    backColor: primaryOrange,
                    onTap: () {
                      PageRouting.pushToPage(context,const BusinessHomeScreen());
                    },
                    curves: 5,
                    child: AppTextOverPass(
                      text: "Save",
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
