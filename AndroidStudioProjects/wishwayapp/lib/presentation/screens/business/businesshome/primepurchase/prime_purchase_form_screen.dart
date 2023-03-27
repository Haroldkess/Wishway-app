import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/screens/business/businesshome/primepurchase/primepurchaseextra/prime_forms.dart';

import '../../../../../services/allNavigation.dart';
import '../../../../constant/color_pallate.dart';
import '../../../../widget/text.dart';

class PrimePurchaseForm extends StatelessWidget {
  final String title;
  final String sub;
  final String body;
  const PrimePurchaseForm(
      {super.key, required this.title, required this.sub, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#0C1017"),
      appBar: AppBar(
          backgroundColor: darkCard,
          toolbarHeight: 80,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              InkWell(
                  onTap: () => PageRouting.popToPage(context),
                  splashColor: darkCard,
                  highlightColor: darkCard,
                  focusColor: darkCard,
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                        color: darkCard,
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: textLightColor,
                            width: 1,
                            style: BorderStyle.solid)),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/icon/leftarrow.svg",
                        color: textLightColor,
                      ),
                    ),
                  )),
              const SizedBox(
                width: 20,
              ),
              AppTextOverPass(
                text: title,
                fontWeight: FontWeight.w600,
                size: 24,
                color: textLightColor,
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Container(
            color: darkCard,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextOverPass(
                    text: title,
                    fontWeight: FontWeight.w600,
                    size: 24,
                    color: textLightColor,
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  AppTextOverPass(
                    text: sub,
                    fontWeight: FontWeight.w400,
                    size: 14,
                    color: HexColor("#929292"),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  AppTextOverPass(
                    text: body,
                    fontWeight: FontWeight.w400,
                    size: 14,
                    color: HexColor("#929292"),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const PrimeForm()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
