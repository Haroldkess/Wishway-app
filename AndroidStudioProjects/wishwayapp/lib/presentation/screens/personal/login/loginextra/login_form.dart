import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/business/businesshome/business_home_screen.dart';
import 'package:wishwayapp/presentation/screens/personal/login/forget_password.dart';
import 'package:wishwayapp/presentation/screens/personal/register/change_password_screen.dart';
import 'package:wishwayapp/presentation/screens/personal/register/register_screen.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';
import 'package:wishwayapp/presentation/widget/app_form.dart';
import 'package:wishwayapp/presentation/widget/app_search.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';
import 'package:wishwayapp/presentation/widget/text.dart';
import 'package:wishwayapp/services/allNavigation.dart';

import '../../../../uiproviders/extras_provider.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  TapGestureRecognizer tapGestureRecognizer = TapGestureRecognizer();

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
                  AppTextOverPass(
                    text: "Login to continue",
                    size: 20,
                    fontWeight: FontWeight.w600,
                    color: textLightColor,
                  )
                ],
              ),
              const AppSpaces(
                height: 15,
              ),
              Row(
                children: [
                  AppTextMulish(
                    text: "Email",
                    size: 20,
                    fontWeight: FontWeight.w400,
                    color: textGreyColor,
                  )
                ],
              ),
              const AppSpaces(
                height: 8,
              ),
              forms(context, "Enter email here", const SizedBox.shrink()),
              Row(
                children: [
                  AppTextMulish(
                    text: "Password",
                    size: 20,
                    fontWeight: FontWeight.w400,
                    color: textGreyColor,
                  )
                ],
              ),
              const AppSpaces(
                height: 8,
              ),
              forms(
                context,
                "Enter password here",
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    "assets/icon/search-normal.svg",
                    color: Colors.transparent,
                  ),
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: () {
                  PageRouting.pushToPage(context, const ForgetPassword());
                },
                child: AppTextMulish(
                  text: "forgot password?",
                  size: 14,
                  fontWeight: FontWeight.w400,
                  color: primaryOrange,
                ))
          ],
        ),
        const AppSpaces(
          height: 25,
        ),
        AppButton(
            width: 360,
            height: 60,
            bordercolor: primaryOrange,
            backColor: primaryOrange,
            onTap: () =>
                PageRouting.pushToPage(context, const BusinessHomeScreen()),
            curves: 5,
            child: AppTextMulish(
              text: "Login",
              color: textLightColor,
              size: 20,
              fontWeight: FontWeight.w400,
            )),
        const AppSpaces(
          height: 20,
        ),
        RichText(
            text: TextSpan(
                text: "Dont have an account? ",
                style: GoogleFonts.mulish(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: textGreyColor,
                        decorationStyle: TextDecorationStyle.solid,
                        fontSize: 14)),
                children: [
              TextSpan(
                text: "Sign Up Here",
                style: GoogleFonts.overpass(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: primaryOrange,
                        decorationStyle: TextDecorationStyle.solid,
                        fontSize: 14)),
                recognizer: tapGestureRecognizer
                  ..onTap = () {
                    PageRouting.pushToPage(
                        context, const RegisterAsIndividual());
                  },
              ),
            ])),
        const AppSpaces(
          height: 12,
        ),
      ],
    );
  }

  Widget forms(BuildContext context, String hint, Widget suffix) {
    return AppForm(
      hint: hint,
      borderRad: 0,
      backColor: darkCard,
      height: 56,
      fontSize: 16,
      hintColor: HexColor("#323232"),
      suffix: suffix,
    );
  }
}
