import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';
import 'package:wishwayapp/presentation/widget/app_form.dart';

import '../../../../../../constant/color_pallate.dart';
import '../../../../../../widget/text.dart';

class OrderPromoCode extends StatelessWidget {
  const OrderPromoCode({super.key});

  @override
  Widget build(BuildContext context) {
    return forms(
      context,
      "Enter Promo Code",
      Padding(
        padding: const EdgeInsets.all(0.0),
        child: AppButton(
          width: 82,
          height: 40,
          bordercolor: HexColor("#242830"),
          backColor: HexColor("#242830"),
          onTap: () {},
          curves: 5,
          child: AppTextOverPass(
            text: "Apply",
            fontWeight: FontWeight.w500,
            size: 14,
            color: primaryOrange,
          ),
        ),
      ),
    );
  }

  Widget forms(BuildContext context, String hint, Widget suffix,
      [Widget? prefix]) {
    return AppForm(
      hint: hint,
      borderRad: 0,
      backColor: darkCard,
      height: 40,
      fontSize: 16,
      hintColor: HexColor("#929292"),
      suffix: suffix,
      prefix: prefix,
    );
  }
}
