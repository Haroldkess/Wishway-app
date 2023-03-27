import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/personal/register/delivery_address_screen.dart';
import 'package:wishwayapp/presentation/screens/personal/register/verify_phone_screen.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';
import 'package:wishwayapp/presentation/widget/app_form.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';
import 'package:wishwayapp/presentation/widget/text.dart';
import 'package:wishwayapp/services/allNavigation.dart';
import '../../../../uiproviders/extras_provider.dart';
import '../../../personal/register/create_password_screen.dart';

class BusinessPersonalForm extends StatelessWidget {
  const BusinessPersonalForm({super.key});
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
                    text: "First name",
                    size: 20,
                    fontWeight: FontWeight.w400,
                    color: textGreyColor,
                  )
                ],
              ),
              const AppSpaces(
                height: 8,
              ),
              forms(context, "Dennis", const SizedBox.shrink()),
              Row(
                children: [
                  AppTextMulish(
                    text: "Last name",
                    size: 20,
                    fontWeight: FontWeight.w400,
                    color: textGreyColor,
                  )
                ],
              ),
              const AppSpaces(
                height: 8,
              ),
              forms(context, "Paul |", const SizedBox.shrink()),
              Row(
                children: [
                  AppTextMulish(
                    text: "Email",
                    size: 20,
                    fontWeight: FontWeight.w400,
                    color: textGreyColor,
                  )
                ],
              ),
              const AppSpaces(
                height: 8,
              ),
              forms(
                context,
                "Enter email here",
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    "assets/icon/search-normal.svg",
                    color: Colors.transparent,
                  ),
                ),
              ),
              Row(
                children: [
                  AppTextMulish(
                    text: "Phone number",
                    size: 20,
                    fontWeight: FontWeight.w400,
                    color: textGreyColor,
                  )
                ],
              ),
              const AppSpaces(
                height: 8,
              ),
              forms(
                  context,
                  "Enter phone number here",
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(
                      "assets/icon/search-normal.svg",
                      color: Colors.transparent,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, left: 12),
                    child: SizedBox(
                      width: 50,
                      child: Row(
                        children: [
                          AppTextMulish(
                            text: "+234",
                            size: 14,
                            fontWeight: FontWeight.w400,
                            color: textLightColor,
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            size: 16,
                            color: HexColor("#8A8A8A"),
                          )
                        ],
                      ),
                    ),
                  ))
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
              text: "Next",
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
      hintColor: textLightColor,
      suffix: suffix,
      prefix: prefix,
    );
  }
}
