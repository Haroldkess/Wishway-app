import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/personal/register/delivery_address_screen.dart';
import 'package:wishwayapp/presentation/screens/personal/register/verify_phone_screen.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';
import 'package:wishwayapp/presentation/widget/app_form.dart';
import 'package:wishwayapp/presentation/widget/app_search.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';
import 'package:wishwayapp/presentation/widget/text.dart';
import 'package:wishwayapp/services/allNavigation.dart';
import '../../../uiproviders/extras_provider.dart';

class ForgetPassDetails extends StatelessWidget {
  const ForgetPassDetails({super.key});

  @override
  Widget build(BuildContext context) {
    ExtraProvider size = Provider.of<ExtraProvider>(context, listen: false);
    return Column(
      children: [
        Container(
          //  height: 250,
          //   color: Colors.amber,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  AppTextMulish(
                    text: "Create a password",
                    size: 20,
                    fontWeight: FontWeight.w600,
                    color: textLightColor,
                  )
                ],
              ),
              Row(
                children: [
                  AppTextMulish(
                    text: "Set a password to secure your account",
                    size: 13,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#929292"),
                  )
                ],
              ),
              const AppSpaces(
                height: 30,
              ),
              Row(
                children: [
                  AppTextMulish(
                    text: "Enter Password",
                    size: 20,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#D4D4D4"),
                  )
                ],
              ),
              const AppSpaces(
                height: 8,
              ),
              forms(context, "Enter password here", const SizedBox.shrink()),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  AppTextMulish(
                    text: "Repeat Password",
                    size: 20,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#D4D4D4"),
                  )
                ],
              ),
              const AppSpaces(
                height: 8,
              ),
              forms(
                context,
                "Enter same password here",
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    "assets/icon/search-normal.svg",
                    color: Colors.transparent,
                  ),
                ),
              ),
            ],
          ),
        ),
        const AppSpaces(
          height: 25,
        ),
        AppButton(
            width: 360,
            height: 60,
            bordercolor: primaryOrange,
            backColor: primaryOrange,
            onTap: () =>  PageRouting.pushToPage(context, const VerifyPhoneScreen()),
            curves: 5,
            child: AppTextMulish(
              text: "Create Password",
              color: textLightColor,
              size: 20,
              fontWeight: FontWeight.w400,
            )),
        const AppSpaces(
          height: 12,
        ),
      ],
    );
  
  }

  Widget forms(BuildContext context, String hint, Widget suffix,
      [Widget? prefix]) {
    return AppForm(
      hint: hint,
      borderRad: 0,
      backColor: darkCard,
      height: 56,
      fontSize: 16,
      hintColor: HexColor("#474747"),
      suffix: suffix,
      prefix: prefix,
    );
  }
}
