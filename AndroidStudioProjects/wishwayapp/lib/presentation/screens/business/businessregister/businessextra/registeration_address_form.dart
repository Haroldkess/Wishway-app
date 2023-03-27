import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/business/businessregister/businessextra/business_checkbox.dart';
import 'package:wishwayapp/presentation/screens/business/businessregister/register_business_address.dart';
import 'package:wishwayapp/presentation/screens/personal/register/create_password_screen.dart';
import 'package:wishwayapp/presentation/screens/personal/register/registerextra/address_dropdown.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';
import 'package:wishwayapp/presentation/widget/app_form.dart';
import 'package:wishwayapp/presentation/widget/app_search.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';
import 'package:wishwayapp/presentation/widget/text.dart';
import 'package:wishwayapp/services/allNavigation.dart';

import '../../../../uiproviders/extras_provider.dart';
import '../register_business_personal.dart';

class BusinessAddressForm extends StatefulWidget {
  const BusinessAddressForm({super.key});

  @override
  State<BusinessAddressForm> createState() => _BusinessAddressFormState();
}

class _BusinessAddressFormState extends State<BusinessAddressForm> {
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const AppSpaces(
                      height: 15,
                    ),
                    Row(
                      children: [
                        AppTextMulish(
                          text: "Business Address",
                          size: 16,
                          fontWeight: FontWeight.w400,
                          color: textGreyColor,
                        )
                      ],
                    ),
                    const AppSpaces(
                      height: 8,
                    ),
                    forms(context, darkCard, "Enter Business address",
                        const SizedBox.shrink()),
                    const AppSpaces(
                      height: 20,
                    ),
                    Row(
                      children: [
                        AppTextMulish(
                          text: "State",
                          size: 16,
                          fontWeight: FontWeight.w400,
                          color: textGreyColor,
                        )
                      ],
                    ),
                    const AppSpaces(
                      height: 8,
                    ),
                    BusinessRegDropDown(
                      hint: "Select",
                      color: HexColor("#242830"),
                    ),
                    const AppSpaces(
                      height: 20,
                    ),
                    Row(
                      children: [
                        AppTextMulish(
                          text: "City",
                          size: 16,
                          fontWeight: FontWeight.w400,
                          color: textGreyColor,
                        )
                      ],
                    ),
                    const AppSpaces(
                      height: 8,
                    ),
                    BusinessRegDropDown(
                      hint: "Select",
                      color: HexColor("#242830"),
                    ),
                    const AppSpaces(
                      height: 20,
                    ),
                    Row(
                      children: [
                        AppTextMulish(
                          text: "Nearest Bustop",
                          size: 16,
                          fontWeight: FontWeight.w400,
                          color: textLightColor,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    forms(context, darkCard, "Enter", const SizedBox.shrink()),
                  ],
                ),
              ),
            ],
          ),
        ),
        const AppSpaces(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              AppButton(
                  width: 360,
                  height: 60,
                  bordercolor: primaryOrange,
                  backColor: primaryOrange,
                  onTap: () async {
                    ExtraProvider provide =
                        Provider.of<ExtraProvider>(context, listen: false);
                    provide.changeRegTimelineIndex(2);
                    PageRouting.pushToPage(
                        context, const RegisterBusinessPersonal());
                  },
                  curves: 5,
                  child: AppTextMulish(
                    text: "Next",
                    color: textLightColor,
                    size: 20,
                    fontWeight: FontWeight.w400,
                  )),
              const AppSpaces(
                height: 12,
              ),
            ],
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
