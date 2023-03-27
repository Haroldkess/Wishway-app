import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/onboarding/onboard_screen.dart';
import 'package:wishwayapp/presentation/uiproviders/extras_provider.dart';
import 'package:wishwayapp/services/operations.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: SvgPicture.asset(
            'assets/icon/icon.svg',
            height: 48,
          ),
        ));
  }

  @override
  void initState() {
    super.initState();
    delayScreen(context);
  }

  static Future delayScreen(BuildContext context) async {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final size = MediaQuery.of(context).size;
      final provider = Provider.of<ExtraProvider>(context, listen: false);
      provider.setScreenSize(size);
    });

    UiOperations.delayScreen(context, const OnboardingScreen());
  }
}
