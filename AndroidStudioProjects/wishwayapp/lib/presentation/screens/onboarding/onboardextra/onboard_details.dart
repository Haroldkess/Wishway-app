import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';
import 'package:wishwayapp/presentation/widget/text.dart';

import '../../../uiproviders/extras_provider.dart';

class OnboardDetails extends StatefulWidget {
  const OnboardDetails({
    super.key,
  });

  @override
  State<OnboardDetails> createState() => _OnboardDetailsState();
}

class _OnboardDetailsState extends State<OnboardDetails> {
  @override
  Widget build(BuildContext context) {
    final size = Provider.of<ExtraProvider>(context, listen: false);
    ExtraProvider index = context.watch<ExtraProvider>();
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      child: index.index == 0
          ? info1(context)
          : index.index == 1
              ? FadeInRight(
                  animate: true,
                  duration: const Duration(milliseconds: 111),
                  child: info2(context))
              : FadeInRight(
                  animate: true,
                  duration: const Duration(milliseconds: 100),
                  child: info3(context)),
    );
  }
}

Widget info1(BuildContext context) {
  final size = Provider.of<ExtraProvider>(context, listen: false);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SvgPicture.asset(
        "assets/icon/amico.svg",
        // width: 239,
        // height: 198,
        alignment: Alignment.centerLeft,
      ),
      const AppSpaces(height: 42),
      AppTextOverPass(
        text: "Fast Delivery",
        fontWeight: FontWeight.w700,
        size: 40,
        color: textLightColor,
      ),
      const AppSpaces(height: 20),
      SizedBox(
        width: 250,
        child: AppTextMulish(
          text:
              "Et, et risus, sem integer sit posuere lorem. Donec pharetra adipiscing ut fames at sociis.",
          fontWeight: FontWeight.w400,
          size: 16,
          color: textGreyColor,
        ),
      )
    ],
  );
}

Widget info2(BuildContext context) {
  final size = Provider.of<ExtraProvider>(context, listen: false);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SvgPicture.asset(
        "assets/icon/cuate.svg",
        // width: 239,
        // height: 198,
        alignment: Alignment.centerLeft,
      ),
      const AppSpaces(height: 42),
      AppTextOverPass(
        text: "Track Delivery",
        fontWeight: FontWeight.w700,
        size: 40,
        color: textLightColor,
      ),
      const AppSpaces(height: 20),
      SizedBox(
        width: 250,
        child: AppTextMulish(
          text:
              "Et, et risus, sem integer sit posuere lorem. Donec pharetra adipiscing ut fames at sociis.",
          fontWeight: FontWeight.w400,
          size: 16,
          color: textGreyColor,
        ),
      )
    ],
  );
}

Widget info3(BuildContext context) {
  final size = Provider.of<ExtraProvider>(context, listen: false);
  return FadeInRight(
    animate: true,
    duration: const Duration(milliseconds: 100),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: SvgPicture.asset(
            "assets/pic/safety.svg",
            //  width: 200,
            // height: 198,
            alignment: Alignment.centerLeft,
          ),
        ),
        const AppSpaces(height: 42),
        AppTextOverPass(
          text: "Package Safety",
          fontWeight: FontWeight.w700,
          size: 40,
          color: textLightColor,
        ),
        const AppSpaces(height: 20),
        SizedBox(
          width: 250,
          child: AppTextMulish(
            text:
                "Et, et risus, sem integer sit posuere lorem. Donec pharetra adipiscing ut fames at sociis.",
            fontWeight: FontWeight.w400,
            size: 16,
            color: textGreyColor,
          ),
        )
      ],
    ),
  );
}
