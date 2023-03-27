import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/personal/home/history/pay_for_booking.dart';
import 'package:wishwayapp/presentation/screens/personal/home/history/payment_options.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';
import 'package:wishwayapp/presentation/widget/text.dart';
import 'package:wishwayapp/services/allNavigation.dart';

class MakePaymentAndShareLocation extends StatelessWidget {
  const MakePaymentAndShareLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
            onTap: () {
              PageRouting.pushToPage(context, const PayForBookingPage());
            },
            child: options("assets/icon/send.svg", "Make Payment")),
        options("assets/icon/share_location.svg", "Share Location"),
      ],
    );
  }

  Widget options(String svgPath, String text) {
    return Container(
      width: 140,
      height: 116,
      decoration: BoxDecoration(
          color: darkCard,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12)),
      alignment: Alignment.center,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                    color: HexColor("#242830"), shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    svgPath,
                  ),
                )),
            const AppSpaces(
              height: 10,
            ),
            AppTextOverPass(
              text: text,
              fontWeight: FontWeight.w500,
              size: 16,
              color: textLightColor,
            )
          ],
        ),
      ),
    );
  }
}
