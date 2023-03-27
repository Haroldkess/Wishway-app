import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/screens/personal/register/registerextra/delivery_address.dart';
import 'package:wishwayapp/presentation/screens/personal/register/registerextra/progress_tracker.dart';
import 'package:wishwayapp/presentation/screens/personal/register/registerextra/register_form.dart';
import 'package:wishwayapp/presentation/screens/personal/register/registerextra/register_header.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';

import '../../../constant/color_pallate.dart';
import '../../../uiproviders/extras_provider.dart';
import '../login/loginextra/banner.dart';

class DeliveryAddressScreen extends StatefulWidget {
  const DeliveryAddressScreen({super.key});

  @override
  State<DeliveryAddressScreen> createState() => _DeliveryAddressScreenState();
}

class _DeliveryAddressScreenState extends State<DeliveryAddressScreen> {
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
                  title: "Register as individual",
                  subTitle:
                      "For best experience, please complete your Personal details.",
                  svgPath: "assets/icon/login_img.svg",
                  //  register_img
                ),
                const AppSpaces(
                  height: 30,
                ),
                const ProgressTracker(isDone: true, pageNum: "2"),
                const AppSpaces(
                  height: 20,
                ),
                const RegisterDeliveryAddress(),
                RichText(
                    text: TextSpan(
                        text: "Already have an account? ",
                        style: GoogleFonts.mulish(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: textGreyColor,
                                decorationStyle: TextDecorationStyle.solid,
                                fontSize: 14)),
                        children: [
                      TextSpan(
                        text: "Login here",
                        style: GoogleFonts.overpass(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: primaryOrange,
                                decorationStyle: TextDecorationStyle.solid,
                                fontSize: 14)),
                      ),
                    ])),
          
                const AppSpaces(
                  height: 30,
                ),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "By signing up, you agree with our ",
                        style: GoogleFonts.mulish(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: textGreyColor,
                                decorationStyle: TextDecorationStyle.solid,
                                fontSize: 14)),
                        children: [
                          TextSpan(
                            text: "Terms of use and Merchant Agreement",
                            style: GoogleFonts.overpass(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: primaryOrange,
                                    decorationStyle: TextDecorationStyle.solid,
                                    fontSize: 14)),
                          ),
                        ])),
              
              
                const AppSpaces(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
  
  
    );
  }
}
