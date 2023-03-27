import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/screens/personal/home/trackshipping/trackingextra/tracking_payment.dart';
import 'package:wishwayapp/presentation/screens/personal/home/trackshipping/trackingextra/tracking_product_details.dart';
import 'package:wishwayapp/presentation/screens/personal/home/trackshipping/trackingextra/tracking_timeline.dart';
import 'package:wishwayapp/presentation/uiproviders/extras_provider.dart';
import 'package:wishwayapp/services/allNavigation.dart';

import '../../../../constant/color_pallate.dart';
import '../../../../widget/text.dart';

class TrackShippingScreen extends StatelessWidget {
  const TrackShippingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    ExtraProvider size = Provider.of(context, listen: false);
    return Scaffold(
      backgroundColor: backgroundColor,
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
                text: "Track Shipping",
                fontWeight: FontWeight.w600,
                size: 16,
                color: textLightColor,
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppTextOverPass(
                          text: "Date Booked",
                          fontWeight: FontWeight.w400,
                          size: 11,
                          color: textLightColor,
                        ),
                        AppTextOverPass(
                          text: "23-02-2023",
                          fontWeight: FontWeight.w700,
                          size: 14,
                          color: textLightColor,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        AppTextOverPass(
                          text: "Date Booked",
                          fontWeight: FontWeight.w400,
                          size: 11,
                          color: textLightColor,
                        ),
                        AppTextOverPass(
                          text: "AS233556FD",
                          fontWeight: FontWeight.w700,
                          size: 14,
                          color: textLightColor,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ProcessTimelinePage(),
                const SizedBox(
                  height: 0,
                ),
                const TrackingPayment(),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: Row(
                    children: [
                      AppTextOverPass(
                        text: "Product Details",
                        fontWeight: FontWeight.w600,
                        size: 24,
                        color: textLightColor,
                      ),
                    ],
                  ),
                ),
                const TrackingProductDetails(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
