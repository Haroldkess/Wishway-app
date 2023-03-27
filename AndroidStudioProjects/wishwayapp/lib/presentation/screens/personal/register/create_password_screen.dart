import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/screens/personal/register/registerextra/change_password_form.dart';
import 'package:wishwayapp/presentation/screens/personal/register/registerextra/progress_tracker.dart';
import 'package:wishwayapp/presentation/screens/personal/register/registerextra/register_form.dart';
import 'package:wishwayapp/presentation/screens/personal/register/registerextra/register_header.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';

import '../../../constant/color_pallate.dart';
import '../../../uiproviders/extras_provider.dart';
import '../login/loginextra/banner.dart';

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ExtraProvider size = Provider.of<ExtraProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
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
                  title: "Secure your account",
                  subTitle: "We keep your data safe!",
                  svgPath: "assets/icon/login_img.svg",
                  //  register_img
                ),
                AppSpaces(
                  height: 30,
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
