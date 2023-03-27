import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/model/ui_model.dart';
import 'package:wishwayapp/presentation/screens/personal/home/history/payment_options.dart';

import '../../../../../widget/text.dart';

class BookingCard extends StatelessWidget {
  final BookingItems item;
  const BookingCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 129,
      decoration: BoxDecoration(
          color: darkCard, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            width: 110,
            decoration: BoxDecoration(
                //   color: darkCard,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage("assets/pic/Rectangle 4004.png"))),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppTextOverPass(
                    text: item.id,
                    fontWeight: FontWeight.w700,
                    size: 14,
                    color: textLightColor,
                  ),
                  TextButton(
                    onPressed: (){
                      
                    },
                    style: const ButtonStyle(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      // height: 44,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          border: Border.all(
                              color: item.status == "Delivered" ||
                                      item.status == "Pay Now"
                                  ? HexColor("#242830")
                                  : Colors.transparent)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: AppTextOverPass(
                          text: item.status,
                          color: item.status == "Delivered" ||
                                  item.status == "Pay Now"
                              ? primaryOrange
                              : item.status == "Pending Dispatched"
                                  ? HexColor("#28FFFF")
                                  : item.status == "Pending delivery"
                                      ? HexColor("#A9EE65")
                                      : item.status == "Pending payment"
                                          ? HexColor("#D41920")
                                          : primaryOrange,
                          //size: ,
                        ),
                      ),
                    ),
                    // minWidth: double.infinity,
                  )
                ],
              ),
              Row(
                children: [
                  AppTextOverPass(
                    text: item.catergory,
                    fontWeight: FontWeight.w600,
                    size: 14,
                    color: HexColor("#D4D4D4"),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      SvgPicture.asset("assets/icon/currentloc.svg",
                          width: 9, height: 9, color: primaryOrange),
                      DottedLine(
                        dashLength: 5,
                        dashGapLength: 1,
                        lineThickness: 2,
                        direction: Axis.vertical,
                        lineLength: 15,
                        dashColor: HexColor("#B2B5C4"),
                      ),
                      SvgPicture.asset(
                        "assets/icon/location.svg",
                        width: 9,
                        height: 9,
                        color: primaryOrange,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTextOverPass(
                        text: item.from,
                        fontWeight: FontWeight.w400,
                        size: 10,
                        color: HexColor("#D4D4D4"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppTextOverPass(
                        text: item.to,
                        fontWeight: FontWeight.w400,
                        size: 10,
                        color: HexColor("#D4D4D4"),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppTextOverPass(
                      text: item.date,
                      fontWeight: FontWeight.w600,
                      size: 10,
                      color: HexColor("#929292"),
                    ),
                    AppTextOverPass(
                      text: item.price,
                      fontWeight: FontWeight.w600,
                      size: 14,
                      color: HexColor("#D4D4D4"),
                    ),
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
