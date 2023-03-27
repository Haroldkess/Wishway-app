import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/screens/business/businesshome/primebalance/days_left.dart';
import 'package:wishwayapp/presentation/screens/business/businesshome/primebalance/trips.dart';
import 'package:wishwayapp/presentation/screens/business/businesshome/primepurchase/prime_purchase_screen.dart';
import 'package:wishwayapp/services/allNavigation.dart';

import '../../../../constant/color_pallate.dart';
import '../../../../widget/text.dart';

class PrimeBalance extends StatelessWidget {
  const PrimeBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      decoration: BoxDecoration(
          color: darkCard,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(17)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppTextOverPass(
                  text: "Prime Balance",
                  fontWeight: FontWeight.w400,
                  size: 14,
                  color: HexColor("#929292"),
                ),
                TextButton(
                  onPressed: ()=> PageRouting.pushToPage(context, const PrimePurchase()),
                  child: AppTextOverPass(
                    text: "Buy more",
                    fontWeight: FontWeight.w400,
                    size: 14,
                    color: primaryOrange,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 17,
            ),
            const Trips(),
            const SizedBox(
              height: 9,
            ),
            const DaysLeft()
          ],
        ),
      ),
    );
  }
}
