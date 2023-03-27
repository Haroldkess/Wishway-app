import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/model/ui_model.dart';
import 'package:wishwayapp/presentation/screens/personal/home/showmap/show_map_screen.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';
import 'package:wishwayapp/presentation/widget/text.dart';
import 'package:wishwayapp/services/allNavigation.dart';

import '../../../../../../widget/spaces.dart';

class OrderDeliveryDetails extends StatelessWidget {
  const OrderDeliveryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AppTextOverPass(
              text: "Delivery Details ",
              fontWeight: FontWeight.w600,
              size: 18,
              color: textLightColor,
            ),
          ],
        ),
        const SizedBox(
          height: 17,
        ),
        Container(
          width: 380,
          //height: 220,
          decoration: BoxDecoration(
              color: darkCard,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: deliveryDetails
                      .map((e) => ListTile(
                            leading: AppTextOverPass(
                              text: e.content.first,
                              fontWeight: FontWeight.w400,
                              size: 12,
                              color: HexColor("#8E92A8"),
                            ),
                            trailing: AppTextOverPass(
                              text: e.content.last,
                              fontWeight: FontWeight.w600,
                              size: 14,
                              color: textLightColor,
                            ),
                          ))
                      .toList(),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
