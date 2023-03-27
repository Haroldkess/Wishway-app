import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/screens/personal/register/registerextra/change_password_form.dart';
import 'package:wishwayapp/presentation/screens/personal/register/registerextra/register_form.dart';
import 'package:wishwayapp/presentation/screens/personal/register/registerextra/register_header.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';

import '../../../constant/color_pallate.dart';
import '../../../uiproviders/extras_provider.dart';
import '../../../widget/text.dart';
import '../login/loginextra/banner.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
              children: const [
                 AppSpaces(
                  height: 40,
                ),
                 RegisterHeader(),
                 AppSpaces(
                  height: 10,
                ),
                 LoginRegisterBanner(
                  title: "Reset Password",
                  subTitle: "",
                  svgPath: "assets/icon/login_img.svg",
                  //  register_img
                ),
                 AppSpaces(
                  height: 10,
                ),
                // Row(
                //   children: [
                //     AppTextMulish(
                //       text: "Change password",
                //       size: 20,
                //       fontWeight: FontWeight.w600,
                //       color: textLightColor,
                //     )
                //   ],
                // ),
                // Row(
                //   children: [
                //     AppTextMulish(
                //       text: "Set a password to secure your account",
                //       size: 13,
                //       fontWeight: FontWeight.w400,
                //       color: HexColor("#646464"),
                //     )
                //   ],
                // ),

                 AppSpaces(
                  height: 10,
                ),
                CreatePasswordForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
