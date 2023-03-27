import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/personal/home/extra/ongoing_shipping.dart';

import '../../../../widget/spaces.dart';
import '../../../../widget/text.dart';
import '../../../landing/landingextra/make_pay_card.dart';
import '../../../landing/landingextra/send_track_recieve_card.dart';
import '../../../landing/landingextra/track_pack_card.dart';

class HomeNav extends StatelessWidget {
  const HomeNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: darkCard,
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 10,
            ),
            Image.asset("assets/pic/shoplogo.png"),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextOverPass(
                  text: "Hello Gwill Ventures",
                  fontWeight: FontWeight.w500,
                  size: 14,
                  color: textLightColor,
                ),
                AppTextOverPass(
                  text: "Enugu, Nigeria",
                  fontWeight: FontWeight.w400,
                  size: 14,
                  color: HexColor("#474747"),
                ),
              ],
            )
          ],
        ),
        actions: [
          SvgPicture.asset("assets/icon/notification.svg"),
          const SizedBox(
            width: 25,
          ),
        ],
      ),
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
              OngoingShipping(),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
