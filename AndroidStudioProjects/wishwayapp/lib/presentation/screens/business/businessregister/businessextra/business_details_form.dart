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

class BusinessDetailsForm extends StatefulWidget {
  const BusinessDetailsForm({super.key});

  @override
  State<BusinessDetailsForm> createState() => _BusinessDetailsFormState();
}

class _BusinessDetailsFormState extends State<BusinessDetailsForm> {
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
                          text: "Business Name",
                          size: 16,
                          fontWeight: FontWeight.w400,
                          color: textGreyColor,
                        )
                      ],
                    ),
                    const AppSpaces(
                      height: 8,
                    ),
                    forms(context, darkCard, "Business Name",
                        const SizedBox.shrink()),
                    const AppSpaces(
                      height: 20,
                    ),
                    Row(
                      children: [
                        AppTextMulish(
                          text: "Business Category",
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
                          text: "Business Registration Status",
                          size: 16,
                          fontWeight: FontWeight.w400,
                          color: textLightColor,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        AppTextMulish(
                          text: "Is your business registered? ",
                          size: 14,
                          fontWeight: FontWeight.w400,
                          color: textGreyColor,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: BusinessCheckBox(text: "Yes Registered"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const AppSpaces(
                      height: 8,
                    ),
                    forms(context, darkCard, "Enter RC/BN Number",
                        const SizedBox.shrink()),
                    const AppSpaces(
                      height: 20,
                    ),
                    Row(
                      children: [
                        AppTextMulish(
                          text: "Insurance Status",
                          size: 16,
                          fontWeight: FontWeight.w400,
                          color: textLightColor,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: AppTextMulish(
                            text:
                                "Is your business insured?  Wishway will not be liable for any damage without insurance",
                            size: 14,
                            fontWeight: FontWeight.w400,
                            color: textGreyColor,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: BusinessCheckBox(text: "Yes, My Business is Insured"),
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
                  bordercolor: darkCard,
                  backColor: darkCard,
                  onTap: () {},
                  curves: 5,
                  child: AppTextMulish(
                    text: "Upload Proof of insurance",
                    color: primaryOrange,
                    size: 14,
                    fontWeight: FontWeight.w600,
                  )),
              const AppSpaces(
                height: 25,
              ),
              AppButton(
                  width: 360,
                  height: 60,
                  bordercolor: primaryOrange,
                  backColor: primaryOrange,
                  onTap: () async {
                    ExtraProvider provide =
                        Provider.of<ExtraProvider>(context, listen: false);
                    provide.changeRegTimelineIndex(1);
                    PageRouting.pushToPage(context,const RegisterBusinessAddress());
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
