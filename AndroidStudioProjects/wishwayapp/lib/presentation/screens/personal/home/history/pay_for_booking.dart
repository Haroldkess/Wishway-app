import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/screens/personal/home/history/extra/bookings.dart';
import 'package:wishwayapp/presentation/screens/landing/landingextra/track_pack_card.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';
import 'package:wishwayapp/presentation/widget/text.dart';

import '../../../../../services/allNavigation.dart';
import '../../../../constant/color_pallate.dart';
import 'extra/pay_for_booking_search.dart';

class PayForBookingPage extends StatelessWidget {
  const PayForBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
          backgroundColor: backgroundColor,
          toolbarHeight: 80,
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Row(
            children: [
              InkWell(
                  onTap: () => PageRouting.popToPage(context),
                  splashColor: darkCard,
                  highlightColor: darkCard,
                  focusColor: darkCard,
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                        color: darkCard,
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: textLightColor,
                            width: 1,
                            style: BorderStyle.solid)),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/icon/leftarrow.svg",
                        color: textLightColor,
                      ),
                    ),
                  )),
              const SizedBox(
                width: 20,
              ),
              AppTextOverPass(
                text: "Make Payment",
                fontWeight: FontWeight.w600,
                size: 18,
                color: textLightColor,
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            const AppSpaces(
              height: 10,
            ),
            const PayForBookingSearch(),
            const SizedBox(height: 20),
            Row(
              children: [
                AppTextOverPass(
                  text: "Bookings",
                  fontWeight: FontWeight.w600,
                  size: 14,
                  color: HexColor("#D4D4D4"),
                ),
              ],
            ),
            Expanded(child: Bookings())
          ],
        ),
      ),
    );
  }
}
