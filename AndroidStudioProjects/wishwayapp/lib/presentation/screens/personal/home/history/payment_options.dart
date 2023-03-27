import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/personal/home/history/pay_for_booking.dart';

import '../../../../../services/allNavigation.dart';
import '../../../../widget/text.dart';

class PaymentOptions extends StatelessWidget {
  const PaymentOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
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
                text: "Payment Option",
                fontWeight: FontWeight.w600,
                size: 18,
                color: textLightColor,
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextOverPass(
                  text: "How would you like to pay",
                  fontWeight: FontWeight.w600,
                  size: 24,
                  color: textLightColor,
                ),
                const SizedBox(
                  height: 13,
                ),
                AppTextOverPass(
                  text: "Choose your preferred payment method",
                  fontWeight: FontWeight.w400,
                  size: 14,
                  color: HexColor("#929292"),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () => PageRouting.pushToPage(
                      context, const PayForBookingPage()),
                  child: optionCards("assets/icon/creditcard.svg",
                      "Credit Card", "Pay with Master Card, Visa, Verve"),
                ),
                const SizedBox(
                  height: 15,
                ),
                optionCards("assets/icon/banktransfer.svg", "Bank Tranfer",
                    "Pay with bank transfer")
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget optionCards(String svgPath, String title, String subTitle) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: darkCard, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  svgPath,
                  color: primaryOrange,
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppTextOverPass(
                      text: title,
                      fontWeight: FontWeight.w600,
                      size: 18,
                      color: textLightColor,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    AppTextMulish(
                      text: subTitle,
                      fontWeight: FontWeight.w400,
                      size: 14,
                      color: HexColor("#929292"),
                    ),
                  ],
                ),
              ],
            ),
            SvgPicture.asset(
              "assets/icon/right_arrow.svg",
              height: 10,
              width: 6,
              color: HexColor("#474747"),
            ),
          ],
        ),
      ),
    );
  }
}
