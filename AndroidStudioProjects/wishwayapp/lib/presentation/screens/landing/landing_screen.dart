import 'package:flutter/material.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/landing/landingextra/make_pay_card.dart';
import 'package:wishwayapp/presentation/screens/landing/landingextra/send_track_recieve_card.dart';
import 'package:wishwayapp/presentation/screens/landing/landingextra/track_pack_card.dart';
import 'package:wishwayapp/presentation/widget/app_bar.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppHeader(color: backgroundColor),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              AppSpaces(
                height: 10,
              ),
              TrackYourPackage(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 27.0),
                child: MakePaymentAndShareLocation(),
              ),
              SendTrackRecieve()
            ],
          ),
        ),
      ),
    );
  }
}
