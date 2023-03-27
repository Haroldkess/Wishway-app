import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/uiproviders/extras_provider.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';
import 'package:wishwayapp/presentation/widget/text.dart';

class OrderBanner extends StatelessWidget {
  final String title;
  final String svgPath;
  const OrderBanner({super.key, required this.title, required this.svgPath});

  @override
  Widget build(BuildContext context) {
    ExtraProvider size = Provider.of<ExtraProvider>(context, listen: false);
    return Container(
      height: 160,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Column(
        children: [
          svgPath == ""
              ? const SizedBox.shrink()
              : Container(
                  decoration: BoxDecoration(
                      color: primaryOrange, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SvgPicture.asset(
                      svgPath,
                      color: textLightColor,
                    ),
                  )),
          const AppSpaces(
            height: 10,
          ),
          AppTextOverPass(
            text: title,
            fontWeight: FontWeight.w600,
            size: 24,
            align: TextAlign.center,
            color: textLightColor,
          ),
        ],
      ),
    );
  }
}
