import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/personal/register/create_password_screen.dart';
import 'package:wishwayapp/presentation/screens/personal/register/registerextra/address_dropdown.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';
import 'package:wishwayapp/presentation/widget/app_form.dart';
import 'package:wishwayapp/presentation/widget/app_search.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';
import 'package:wishwayapp/presentation/widget/text.dart';
import 'package:wishwayapp/services/allNavigation.dart';

import '../../../../uiproviders/extras_provider.dart';

class RegisterDeliveryAddress extends StatefulWidget {
  const RegisterDeliveryAddress({super.key});

  @override
  State<RegisterDeliveryAddress> createState() =>
      _RegisterDeliveryAddressState();
}

class _RegisterDeliveryAddressState extends State<RegisterDeliveryAddress> {
  @override
  Widget build(BuildContext context) {
    ExtraProvider size = Provider.of<ExtraProvider>(context, listen: false);
    return Column(
      children: [
        Container(
          //  height: 250,
          //   color: Colors.amber,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const AppSpaces(
                height: 15,
              ),
              Row(
                children: [
                  AppTextMulish(
                    text: "Delivery Address",
                    size: 20,
                    fontWeight: FontWeight.w400,
                    color: textGreyColor,
                  )
                ],
              ),
              const AppSpaces(
                height: 8,
              ),
              forms(context, "21 Bartus Street, Abuja Nigeria",
                  const SizedBox.shrink()),
              const AppSpaces(
                height: 20,
              ),
              Row(
                children: [
                  AppTextMulish(
                    text: "State",
                    size: 20,
                    fontWeight: FontWeight.w400,
                    color: textGreyColor,
                  )
                ],
              ),
              const AppSpaces(
                height: 8,
              ),
              const AddressDropDown(hint: "Select"),
              const AppSpaces(
                height: 20,
              ),
              Row(
                children: [
                  AppTextMulish(
                    text: "City",
                    size: 20,
                    fontWeight: FontWeight.w400,
                    color: textGreyColor,
                  )
                ],
              ),
              const AppSpaces(
                height: 8,
              ),
              const AddressDropDown(hint: "City"),
              const AppSpaces(
                height: 20,
              ),
              Row(
                children: [
                  AppTextMulish(
                    text: "Nearest Bustop",
                    size: 20,
                    fontWeight: FontWeight.w400,
                    color: textGreyColor,
                  )
                ],
              ),
              const AppSpaces(
                height: 8,
              ),
              forms(context, "Enter", const SizedBox.shrink()),
            ],
          ),
        ),
        const AppSpaces(
          height: 25,
        ),
        AppButton(
            width: 360,
            height: 60,
            bordercolor: primaryOrange,
            backColor: primaryOrange,
            onTap: () =>
                PageRouting.pushToPage(context, const CreatePasswordScreen()),
            curves: 5,
            child: AppTextMulish(
              text: "Register",
              color: textLightColor,
              size: 20,
              fontWeight: FontWeight.w400,
            )),
        const AppSpaces(
          height: 12,
        ),
      ],
    );
  }

  Widget forms(BuildContext context, String hint, Widget suffix,
      [Widget? prefix]) {
    return AppForm(
      hint: hint,
      borderRad: 0,
      backColor: darkCard,
      height: 56,
      fontSize: 16,
      hintColor: HexColor("#929292"),
      suffix: suffix,
      prefix: prefix,
    );
  }
}
