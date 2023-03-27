import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/screens/personal/register/registerextra/change_password_form.dart';
import 'package:wishwayapp/presentation/screens/personal/register/registerextra/register_header.dart';
import 'package:wishwayapp/presentation/screens/personal/register/registerextra/verify_phone_form.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';

import '../../../constant/color_pallate.dart';
import '../../../uiproviders/extras_provider.dart';
import '../login/loginextra/banner.dart';

class VerifyPhoneScreen extends StatelessWidget {
  const VerifyPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ExtraProvider size = Provider.of<ExtraProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const AppSpaces(
                  height: 40,
                ),
                const RegisterHeader(),
                const AppSpaces(
                  height: 10,
                ),
                const LoginRegisterBanner(
                  title: "Verify Phone number",
                  subTitle: "",
                  svgPath: "assets/icon/login_img.svg",
                  //  register_img
                ),
                const AppSpaces(
                  height: 0,
                ),
                const VerifyPhoneForm(),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "Didn’t receive code? ",
                        style: GoogleFonts.mulish(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: textGreyColor,
                                decorationStyle: TextDecorationStyle.solid,
                                fontSize: 14)),
                        children: [
                          TextSpan(
                            text: "Resend Code",
                            style: GoogleFonts.overpass(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: primaryOrange,
                                    decorationStyle: TextDecorationStyle.solid,
                                    fontSize: 14)),
                          ),
                        ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
