import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/model/ui_model.dart';
import 'package:wishwayapp/presentation/screens/business/businesshome/primepurchase/prime_purchase_form_screen.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';
import 'package:wishwayapp/services/allNavigation.dart';

import '../../../../constant/color_pallate.dart';
import '../../../../widget/text.dart';

class PrimePurchase extends StatelessWidget {
  const PrimePurchase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#0C1017"),
      appBar: AppBar(
          backgroundColor: darkCard,
          toolbarHeight: 80,
          automaticallyImplyLeading: false,
          title: Row(
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
                  )),
              const SizedBox(
                width: 20,
              ),
              AppTextOverPass(
                text: "Prime Purchase",
                fontWeight: FontWeight.w600,
                size: 16,
                color: textLightColor,
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: primePurchase
                .map((e) => Padding(
                      padding: const EdgeInsets.only(bottom: 21),
                      child: Container(
                        height: 183,
                        width: 363,
                        padding: const EdgeInsets.only(
                          left: 27,
                          right: 17,
                        ),
                        decoration: BoxDecoration(
                            color: darkCard,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(17)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            AppTextOverPass(
                              text: e.title,
                              fontWeight: FontWeight.w600,
                              size: 24,
                              color: textLightColor,
                            ),
                            AppTextOverPass(
                              text: e.sub,
                              fontWeight: FontWeight.w400,
                              size: 14,
                              color: HexColor("#929292"),
                            ),
                            AppTextOverPass(
                              text: e.body,
                              fontWeight: FontWeight.w400,
                              size: 14,
                              color: HexColor("#929292"),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                AppButton(
                                  width: 88,
                                  height: 26,
                                  bordercolor: primaryOrange,
                                  backColor: primaryOrange,
                                  onTap: () {
                                    PageRouting.pushToPage(
                                        context,
                                        PrimePurchaseForm(
                                          title: e.title,
                                          sub: e.sub,
                                          body: e.body,
                                        ));
                                  },
                                  curves: 5,
                                  child: AppTextOverPass(
                                    text: "Buy Now",
                                    fontWeight: FontWeight.w400,
                                    size: 14,
                                    color: textLightColor,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
