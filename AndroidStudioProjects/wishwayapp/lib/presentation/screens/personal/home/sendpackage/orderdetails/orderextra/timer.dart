import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/screens/personal/home/sendpackage/orderdetails/orderextra/booking_timeout_modal.dart';
import 'package:wishwayapp/presentation/widget/text.dart';

class TimeLeft extends StatelessWidget {
  const TimeLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AppTextOverPass(
          text: "24 Hours Left",
          fontWeight: FontWeight.w700,
          size: 14,
          color: HexColor("#D41920"),
        ),
        const SizedBox(
          width: 5,
        ),
        InkWell(
            onTap: () => bookingTimeoutModal(context),
            child: SvgPicture.asset("assets/icon/info.svg"))
      ],
    );
  }
}
