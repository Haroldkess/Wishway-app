import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/screens/business/businesshome/primepurchase/buy_reciept.dart';
import 'package:wishwayapp/presentation/screens/business/businesshome/primepurchase/primepurchaseextra/prime_dropdown.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';
import 'package:wishwayapp/services/allNavigation.dart';

import '../../../../../constant/color_pallate.dart';
import '../../../../../widget/app_form.dart';
import '../../../../../widget/spaces.dart';
import '../../../../../widget/text.dart';
import '../../../../personal/register/registerextra/address_dropdown.dart';

class PrimeForm extends StatelessWidget {
  const PrimeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                AppTextMulish(
                  text: "Product Category",
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: textGreyColor,
                )
              ],
            ),
            const AppSpaces(
              height: 8,
            ),
            PrimeDropDown(
              hint: "Select",
              color: HexColor("#242830"),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Row(
              children: [
                AppTextMulish(
                  text: "Product Type",
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: textGreyColor,
                )
              ],
            ),
            const AppSpaces(
              height: 8,
            ),
            PrimeDropDown(
              hint: "Select",
              color: HexColor("#242830"),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Row(
              children: [
                AppTextMulish(
                  text: "Select Number of Trips",
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: textGreyColor,
                )
              ],
            ),
            const AppSpaces(
              height: 8,
            ),
            PrimeDropDown(
              hint: "Select",
              color: HexColor("#242830"),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Row(
              children: [
                AppTextMulish(
                  text: "Select Weight Range",
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: textGreyColor,
                )
              ],
            ),
            const AppSpaces(
              height: 8,
            ),
            PrimeDropDown(
              hint: "Select",
              color: HexColor("#242830"),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Row(
              children: [
                AppTextMulish(
                  text: "Select Duration",
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: textGreyColor,
                )
              ],
            ),
            const AppSpaces(
              height: 8,
            ),
            PrimeDropDown(
              hint: "Select",
              color: HexColor("#242830"),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        AppButton(
          width: 364,
          height: 64,
          bordercolor: primaryOrange,
          backColor: primaryOrange,
          onTap: () {
            PageRouting.pushToPage(context, const PrimeBuyReciept());
          },
          curves: 5,
          child: AppTextOverPass(
            text: "Continue",
            fontWeight: FontWeight.w400,
            size: 20,
            color: textLightColor,
          ),
        )
      ],
    );
  }

  Widget forms(BuildContext context, Color color, String hint, Widget suffix,
      [Widget? prefix]) {
    return AppForm(
      hint: hint,
      borderRad: 0,
      backColor: color,
      height: 56,
      fontSize: 16,
      hintColor: HexColor("#929292"),
      suffix: suffix,
      prefix: prefix,
    );
  }
}
