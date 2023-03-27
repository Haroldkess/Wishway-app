import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/screens/business/businessregister/register_business_details.dart';
import 'package:wishwayapp/presentation/screens/personal/register/register_screen.dart';
import 'package:wishwayapp/presentation/uiproviders/extras_provider.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';
import 'package:wishwayapp/presentation/widget/text.dart';
import 'package:wishwayapp/services/allNavigation.dart';
import 'package:wishwayapp/services/operations.dart';

import '../../../constant/color_pallate.dart';
import '../../../model/ui_model.dart';

signupOptionModal(BuildContext context) async {
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
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                          onTap: () => PageRouting.popToPage(context),
                          splashColor: darkCard,
                          highlightColor: darkCard,
                          focusColor: darkCard,
                          child: Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                                color: darkCard,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: textLightColor,
                                    width: 1,
                                    style: BorderStyle.solid)),
                            child: Center(
                              child: SvgPicture.asset(
                                "assets/icon/leftarrow.svg",
                                color: textLightColor,
                              ),
                            ),
                          ))
                    ],
                  ),
                  const AppSpaces(
                    height: 25,
                  ),
                  Row(
                    children: [
                      AppTextOverPass(
                        text: "Join Wishway as",
                        size: 24,
                        fontWeight: FontWeight.w600,
                        color: textLightColor,
                      ),
                    ],
                  ),
                  const AppSpaces(
                    height: 25,
                  ),
                  Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: context
                        .watch<ExtraProvider>()
                        .signUpOption
                        .map((e) => e.isTicked
                            ? ListTile(
                                onTap: () {
                                  UiOperations.selectSignupOption(
                                      context, e.id, false);
                                },
                                leading: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.transparent,
                                        border: Border.all(
                                            width: e.isTicked ? 5 : 1,
                                            color: e.isTicked
                                                ? primaryOrange
                                                : textLightColor,
                                            style: BorderStyle.solid)),
                                  ),
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: AppTextOverPass(
                                    text: e.text,
                                    color: textLightColor,
                                    size: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            : ListTile(
                                onTap: () {
                                  UiOperations.selectSignupOption(
                                      context, e.id, true);
                                },
                                leading: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: e.isTicked ? 5 : 1,
                                            color: e.isTicked
                                                ? primaryOrange
                                                : textLightColor,
                                            style: BorderStyle.solid)),
                                  ),
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: AppTextMulish(
                                    text: e.text,
                                    color: textLightColor,
                                    size: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ))
                        .toList(),
                  ),
                  const AppSpaces(
                    height: 30,
                  ),
                  AppButton(
                    width: 364,
                    height: 64,
                    bordercolor: primaryOrange,
                    backColor: primaryOrange,
                    onTap: () {
                      ExtraProvider provide =
                          Provider.of<ExtraProvider>(context, listen: false);

                      if (provide.signUpOption.last.isTicked) {
                        PageRouting.pushToPage(context, const RegisterAsIndividual());
                      } else if (provide.signUpOption.first.isTicked) {
                         PageRouting.pushToPage(context, const RegisterBusiness());
                      } else {
                        log("nothing selected");
                      }
                    },
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
