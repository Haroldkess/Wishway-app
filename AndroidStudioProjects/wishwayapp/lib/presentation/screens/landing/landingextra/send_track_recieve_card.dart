import 'package:flutter/material.dart';
import 'package:wishwayapp/presentation/screens/landing/landingextra/signup_option.dart';
import 'package:wishwayapp/presentation/screens/personal/login/login_screen.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';
import 'package:wishwayapp/presentation/widget/text.dart';
import 'package:wishwayapp/services/allNavigation.dart';

import '../../../constant/color_pallate.dart';
import '../../../widget/spaces.dart';

class SendTrackRecieve extends StatelessWidget {
  const SendTrackRecieve({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 150,
      decoration: BoxDecoration(
          color: darkCard,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextCabin(
                    text: "Send, Track & Receive",
                    fontWeight: FontWeight.w600,
                    size: 24,
                    color: textLightColor,
                  ),
                  const AppSpaces(
                    height: 20,
                  ),
                  AppTextOverPass(
                    text: "Trust us for fast and safe delivery",
                    fontWeight: FontWeight.w400,
                    size: 14,
                    color: primaryOrange,
                  ),
                  const AppSpaces(
                    height: 20,
                  ),
                  Row(
                    children: [
                      AppButton(
                          width: 104,
                          height: 40,
                          bordercolor: primaryOrange,
                          backColor: primaryOrange,
                          onTap: () => PageRouting.pushToPage(
                              context, const LoginScreen()),
                          curves: 5,
                          child: AppTextOverPass(
                            text: "Login",
                            color: textLightColor,
                            size: 14,
                            fontWeight: FontWeight.w500,
                          )),
                      const AppSpaces(
                        width: 16,
                      ),
                      AppButton(
                          width: 104,
                          height: 40,
                          bordercolor: primaryOrange,
                          backColor: Colors.transparent,
                          onTap: () => signupOptionModal(context),
                          curves: 5,
                          child: AppTextOverPass(
                            text: "Sign Up",
                            color: primaryOrange,
                            size: 14,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  
  }
}
