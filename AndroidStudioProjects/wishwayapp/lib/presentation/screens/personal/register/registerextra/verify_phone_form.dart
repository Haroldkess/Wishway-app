import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/screens/personal/register/modals/promo_code.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';
import 'package:wishwayapp/presentation/widget/text.dart';
import 'package:wishwayapp/presentation/widget/verify_form.dart';
import 'package:wishwayapp/services/allNavigation.dart';

import '../../../../constant/color_pallate.dart';
import '../../../../uiproviders/extras_provider.dart';
import '../../../../widget/spaces.dart';

class VerifyPhoneForm extends StatelessWidget {
  const VerifyPhoneForm({super.key});

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
                    text: "Hello Gwill’s Ventures",
                    size: 20,
                    fontWeight: FontWeight.w600,
                    color: textLightColor,
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: RichText(
                        text: TextSpan(
                            text:
                                "To verify your phone number, please enter the 4 digit code sent to ",
                            style: GoogleFonts.mulish(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: textGreyColor,
                                    decorationStyle: TextDecorationStyle.solid,
                                    fontSize: 14)),
                            children: [
                          TextSpan(
                            text: "“+23470 445 366 000”",
                            style: GoogleFonts.overpass(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: primaryOrange,
                                    decorationStyle: TextDecorationStyle.solid,
                                    fontSize: 14)),
                          ),
                        ])),
                  ),
                ],
              ),
              const AppSpaces(
                height: 30,
              ),
              Row(
                children: [
                  AppTextMulish(
                    text: "Enter code here",
                    size: 20,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#D4D4D4"),
                  )
                ],
              ),
              const AppSpaces(
                height: 8,
              ),
              PinCodeVerification()
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
            onTap: () => PageRouting.pushToPage(context, const PromoCode()),
            curves: 5,
            child: AppTextMulish(
              text: "Verify",
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
}
