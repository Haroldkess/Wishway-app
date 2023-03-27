import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/model/ui_model.dart';
import 'package:wishwayapp/presentation/screens/personal/home/history/payment_options.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';

import '../../../../../services/allNavigation.dart';
import '../../../../constant/color_pallate.dart';
import '../../../../widget/text.dart';

class PrimeBuyReciept extends StatelessWidget {
  const PrimeBuyReciept({super.key});

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
                text: "Buy Wishway Now",
                fontWeight: FontWeight.w600,
                size: 24,
                color: textLightColor,
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 382,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: darkCard,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(17)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: primeBuyModel
                      .map((e) => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppTextOverPass(
                                text: e.title,
                                fontWeight: FontWeight.w400,
                                size: 14,
                                color: textGreyColor,
                              ),
                              AppTextOverPass(
                                text: e.sub,
                                fontWeight: FontWeight.w500,
                                size: 16,
                                color: textLightColor,
                              ),
                            ],
                          ))
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              AppButton(
                  width: 364,
                  height: 64,
                  bordercolor: primaryOrange,
                  backColor: primaryOrange,
                  onTap: () {
                    PageRouting.pushToPage(context, const PaymentOptions());
                  },
                  curves: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppTextOverPass(
                        text: "Pay",
                        fontWeight: FontWeight.w500,
                        size: 20,
                        color: textLightColor,
                      ),
                      AppTextOverPass(
                        text: "NGN 30,000",
                        fontWeight: FontWeight.w400,
                        size: 14,
                        color: textLightColor,
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
