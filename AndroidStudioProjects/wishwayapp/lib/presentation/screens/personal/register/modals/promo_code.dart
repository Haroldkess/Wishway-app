import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/personal/home/individual_home_screen.dart';
import 'package:wishwayapp/presentation/screens/personal/register/modals/modalextra/phone_verified.dart';
import 'package:wishwayapp/presentation/screens/personal/register/modals/modalextra/reset_your_pin.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';
import 'package:wishwayapp/services/allNavigation.dart';

import '../../../../widget/spaces.dart';
import '../../../../widget/text.dart';
import '../../login/loginextra/banner.dart';

class PromoCode extends StatefulWidget {
  const PromoCode({super.key});

  @override
  State<PromoCode> createState() => _PromoCodeState();
}

class _PromoCodeState extends State<PromoCode> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: darkCard,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AppSpaces(
                height: 100,
              ),
              AppTextOverPass(
                text: "Promo Code",
                fontWeight: FontWeight.w600,
                size: 24,
                align: TextAlign.center,
                color: textLightColor,
              ),
              const AppSpaces(
                height: 15,
              ),
              SizedBox(
                width: 150,
                child: AppTextMulish(
                  text:
                      "Enter a referral Code to earn points on the Wishway App",
                  fontWeight: FontWeight.w400,
                  size: 16,
                  align: TextAlign.center,
                  color: HexColor("#929292"),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  AppTextMulish(
                    text: "Enter Promo Code",
                    size: 20,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#D4D4D4"),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 45,
                //width: 383,
                decoration: BoxDecoration(
                    color: HexColor("#0C1017"),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: TextFormField(
                      controller: controller,
                      style: GoogleFonts.overpass(
                          color: HexColor("#D9D9D9"),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                          hintText: "     Enter promo code here",
                          hintStyle: GoogleFonts.overpass(
                              color: HexColor("#474747"), fontSize: 16),
                          //    suffixIcon: suffix,
                          // prefixIcon: prefix,
                          border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(2.0),
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent))),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              AppButton(
                  width: 360,
                  height: 60,
                  bordercolor: controller.text.isNotEmpty
                      ? primaryOrange
                      : HexColor("#474747"),
                  backColor: controller.text.isNotEmpty
                      ? primaryOrange
                      : HexColor("#474747"),
                  onTap: () {
                    // phoneVerifiedModal(context);
                    resetPinModal(context);
                  },
                  curves: 45,
                  child: AppTextMulish(
                    text: "Continue",
                    color: textLightColor,
                    size: 20,
                    fontWeight: FontWeight.w400,
                  )),
              const AppSpaces(
                height: 20,
              ),
              TextButton(
                  onPressed: () => PageRouting.pushToPage(context, const  IndividualHomeScreen()),
                  child: AppTextOverPass(
                    text: "Skip",
                    color: HexColor("#929292"),
                    size: 19,
                    fontWeight: FontWeight.w700,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
