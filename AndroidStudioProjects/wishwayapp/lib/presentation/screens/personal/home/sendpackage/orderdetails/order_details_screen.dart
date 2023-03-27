import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/personal/home/sendpackage/orderdetails/order_details_success.dart';
import 'package:wishwayapp/presentation/screens/personal/home/sendpackage/orderdetails/orderextra/order_delivery_details.dart';
import 'package:wishwayapp/presentation/screens/personal/home/sendpackage/orderdetails/orderextra/order_item_details.dart';
import 'package:wishwayapp/presentation/screens/personal/home/sendpackage/sendextra/senders_form.dart';
import 'package:wishwayapp/presentation/screens/personal/home/sendpackage/sendextra/sending_timeline.dart';
import 'package:wishwayapp/presentation/screens/personal/register/modals/promo_code.dart';
import 'package:wishwayapp/presentation/uiproviders/extras_provider.dart';
import 'package:wishwayapp/presentation/widget/app_button.dart';

import '../../../../../../services/allNavigation.dart';
import '../../../../../widget/text.dart';
import 'orderextra/order_promo_code.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ExtraProvider size = Provider.of(context, listen: false);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
          backgroundColor: backgroundColor,
          toolbarHeight: 80,
          automaticallyImplyLeading: false,
          elevation: 0,
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
            ],
          )),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const OrderItemDetails(),
                const SizedBox(
                  height: 20,
                ),
                const OrderDeliveryDetails(),
                const SizedBox(
                  height: 20,
                ),
                const OrderPromoCode(),
                const SizedBox(
                  height: 30,
                ),
                AppButton(
                  width: 364,
                  height: 64,
                  bordercolor: primaryOrange,
                  backColor: primaryOrange,
                  onTap: () {},
                  curves: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppTextOverPass(
                        text: "PAY NOW",
                        fontWeight: FontWeight.w600,
                        size: 18,
                        color: textLightColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: AppTextOverPass(
                          text: "(NGN 2,450)",
                          fontWeight: FontWeight.w400,
                          size: 12,
                          color: textLightColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                AppButton(
                  width: 364,
                  height: 64,
                  bordercolor: primaryOrange,
                  backColor: Colors.transparent,
                  onTap: () => PageRouting.pushToPage(
                      context, const OrderDetailsSuccess()),
                  curves: 5,
                  child: AppTextMulish(
                    text: "Booking Only",
                    fontWeight: FontWeight.w400,
                    size: 20,
                    color: textLightColor,
                  ),
                ),
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
