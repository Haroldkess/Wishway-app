import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/personal/home/sendpackage/sendextra/item_weight_modal.dart';
import 'package:wishwayapp/presentation/screens/personal/home/sendpackage/sendextra/prefered_ride_modal.dart';
import 'package:wishwayapp/presentation/screens/personal/home/sendpackage/sendextra/upload_image.dart';
import 'package:wishwayapp/presentation/screens/personal/register/delivery_address_screen.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';
import 'package:wishwayapp/presentation/widget/app_form.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';
import 'package:wishwayapp/presentation/widget/text.dart';
import 'package:wishwayapp/services/allNavigation.dart';
import '../../../../../uiproviders/extras_provider.dart';

class ItemForm extends StatelessWidget {
  const ItemForm({super.key});
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
                    text: "Item Name",
                    size: 16,
                    fontWeight: FontWeight.w400,
                    color: formTitle,
                  ),
                ],
              ),
              const AppSpaces(
                height: 8,
              ),
              forms(context, true, darkCard, "Enter pickup address",
                  const SizedBox.shrink()),
              const AppSpaces(
                height: 20,
              ),
              Row(
                children: [
                  AppTextMulish(
                    text: "Item Category",
                    size: 16,
                    fontWeight: FontWeight.w400,
                    color: formTitle,
                  )
                ],
              ),
              const AppSpaces(
                height: 8,
              ),
              forms(
                context,
                false,
                Colors.transparent,
                "choose category",
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SvgPicture.asset(
                    "assets/icon/dropdown.svg",
                    color: formTitle,
                  ),
                ),
              ),
              const AppSpaces(
                height: 20,
              ),
              Row(
                children: [
                  AppTextMulish(
                    text: "Item Type",
                    size: 16,
                    fontWeight: FontWeight.w400,
                    color: formTitle,
                  )
                ],
              ),
              const AppSpaces(
                height: 8,
              ),
              forms(
                context,
                false,
                Colors.transparent,
                "choose category",
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SvgPicture.asset(
                    "assets/icon/dropdown.svg",
                    color: formTitle,
                  ),
                ),
              ),
              const AppSpaces(
                height: 20,
              ),
              Row(
                children: [
                  AppTextMulish(
                    text: "Item Weight",
                    size: 16,
                    fontWeight: FontWeight.w400,
                    color: formTitle,
                  )
                ],
              ),
              const AppSpaces(
                height: 8,
              ),
              InkWell(
                onTap: () => itemWeightModal(context),
                child: forms(
                  context,
                  false,
                  Colors.transparent,
                  "Choose item weight range",
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SvgPicture.asset(
                      "assets/icon/dropdown.svg",
                      color: formTitle,
                    ),
                  ),
                ),
              ),
              const AppSpaces(
                height: 20,
              ),
              Row(
                children: [
                  AppTextMulish(
                    text: "Item Quantity",
                    size: 16,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#D4D4D4"),
                  )
                ],
              ),
              const AppSpaces(
                height: 8,
              ),
              forms(
                context,
                true,
                darkCard,
                "Enter the quantity of the item",
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
                    text: "Item Value",
                    size: 16,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#D4D4D4"),
                  )
                ],
              ),
              const AppSpaces(
                height: 8,
              ),
              forms(
                context,
                true,
                darkCard,
                "What is the value of the item",
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
              UploadPackageImage()
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
            onTap: () => rideModal(context),
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

  Widget forms(BuildContext context, bool enable, Color backColor, String hint,
      Widget suffix,
      [Widget? prefix]) {
    return AppForm(
      hint: hint,
      borderRad: 0,
      backColor: backColor,
      height: 56,
      fontSize: 16,
      hintColor: HexColor("#474747"),
      suffix: suffix,
      prefix: prefix,
      enable: enable,
    );
  }
}
