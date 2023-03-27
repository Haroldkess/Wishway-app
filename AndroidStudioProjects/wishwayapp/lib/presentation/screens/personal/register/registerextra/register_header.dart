import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../services/allNavigation.dart';
import '../../../../constant/color_pallate.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
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
            ))
    
    
      ],
    );
  }
}
