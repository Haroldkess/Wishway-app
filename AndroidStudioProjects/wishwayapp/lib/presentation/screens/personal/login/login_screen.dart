import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/personal/login/loginextra/banner.dart';
import 'package:wishwayapp/presentation/screens/personal/login/loginextra/login_form.dart';
import 'package:wishwayapp/presentation/screens/personal/login/loginextra/login_header.dart';
import 'package:wishwayapp/presentation/uiproviders/extras_provider.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              children: [
                const AppSpaces(
                  height: 40,
                ),
                const LoginHeader(),
                const AppSpaces(
                  height: 10,
                ),
                const LoginRegisterBanner(
                  title: "Welcome to Wishway!",
                  subTitle: "We keep your data safe!",
                  svgPath: "assets/icon/login_img.svg",
                ),
                const AppSpaces(
                  height: 30,
                ),
                LoginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
