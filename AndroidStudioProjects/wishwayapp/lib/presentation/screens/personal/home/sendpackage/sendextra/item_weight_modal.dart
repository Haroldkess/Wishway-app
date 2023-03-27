import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/widget/app_form.dart';

import '../../../../../../services/allNavigation.dart';
import '../../../../../constant/color_pallate.dart';
import '../../../../../widget/app_button.dart';
import '../../../../../widget/spaces.dart';
import '../../../../../widget/text.dart';
import '../../../login/loginextra/banner.dart';

List<String> weight = [
  "50-199kg",
  "200-599kg",
  "600-1000kg",
  "Others",
];

itemWeightModal(BuildContext context) async {
  return showModalBottomSheet(
      context: context,
      // isScrollControlled: true,
      backgroundColor: darkCard,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        AppTextOverPass(
                          text: "Item Weight",
                          fontWeight: FontWeight.w600,
                          size: 18,
                          align: TextAlign.center,
                          color: textLightColor,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: weight
                              .map(
                                (e) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: AppTextOverPass(
                                    text: e,
                                    fontWeight: FontWeight.w600,
                                    size: 18,
                                    align: TextAlign.center,
                                    color: HexColor("#474747"),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ));
}
