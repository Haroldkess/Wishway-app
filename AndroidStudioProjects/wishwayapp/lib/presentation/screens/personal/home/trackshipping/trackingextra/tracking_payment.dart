import 'package:flutter/material.dart';

import '../../../../../constant/color_pallate.dart';
import '../../../../../widget/text.dart';

class TrackingPayment extends StatelessWidget {
  const TrackingPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 334,
      decoration: BoxDecoration(
          color: darkCard, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppTextOverPass(
                  text: "Status",
                  fontWeight: FontWeight.w400,
                  size: 14,
                  color: textLightColor,
                ),
                TextButton(
                  onPressed: null,
                  style: TextButton.styleFrom(
                      side: BorderSide(
                          color: primaryOrange,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: AppTextOverPass(
                    text: "Pay Now",
                    fontWeight: FontWeight.w700,
                    size: 14,
                    color: textLightColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                AppTextOverPass(
                  text: "Pending Payment",
                  fontWeight: FontWeight.w800,
                  size: 18,
                  color: textLightColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
