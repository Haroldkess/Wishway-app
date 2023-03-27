import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/personal/home/sendpackage/reciever_details_screen.dart';
import 'package:wishwayapp/presentation/screens/personal/register/delivery_address_screen.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';
import 'package:wishwayapp/presentation/widget/app_form.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';
import 'package:wishwayapp/presentation/widget/text.dart';
import 'package:wishwayapp/services/allNavigation.dart';
import '../../../../../uiproviders/extras_provider.dart';

class SenderForm extends StatelessWidget {
  const SenderForm({super.key});
  @override
  Widget build(BuildContext context) {
    ExtraProvider changeIndex =
        Provider.of<ExtraProvider>(context, listen: false);
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
                    text: "Pickup Address",
                    size: 16,
                    fontWeight: FontWeight.w400,
                    color: textGreyColor,
                  )
                ],
              ),
              const AppSpaces(
                height: 8,
              ),
              forms(context, "Enter pickup address", const SizedBox.shrink()),
              const AppSpaces(
                height: 20,
              ),
              Row(
                children: [
                  AppTextMulish(
                    text: "Sender’s Name",
                    size: 16,
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
                "Enter your name",
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    "assets/icon/search-normal.svg",
                    color: Colors.transparent,
                  ),
                ),
              ),
              const AppSpaces(
                height: 20,
              ),
              Row(
                children: [
                  AppTextMulish(
                    text: "Phone number",
                    size: 16,
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
          height: 40,
        ),
        AppButton(
            width: 360,
            height: 60,
            bordercolor: primaryOrange,
            backColor: primaryOrange,
            onTap: () async {
              changeIndex.changeSendPackageIndex(1);
              PageRouting.pushToPage(context, const RecieverDetails());
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
