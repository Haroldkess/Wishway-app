import 'package:flutter/material.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';

import '../../../../widget/text.dart';

class BusinessCheckBox extends StatelessWidget {
  final String text;
  const BusinessCheckBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: true, onChanged: (val) {}),
        AppTextOverPass(
          text: text,
          size: 14,
          fontWeight: FontWeight.w600,
          color: textLightColor,
        )
      ],
    );
  }
}
