import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../../../../../services/allNavigation.dart';
import '../../../../../../constant/color_pallate.dart';
import '../../../../../../widget/text.dart';

bookingTimeoutModal(BuildContext context) async {
  return showModalBottomSheet(
      context: context,
      // isScrollControlled: true,
      backgroundColor: darkCard,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Padding(
                padding: const EdgeInsets.only(left: 0, top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
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
                                      child: Icon(
                                        Icons.clear,
                                        color: textLightColor,
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AppTextOverPass(
                          text: "Booking Time-out",
                          fontWeight: FontWeight.w600,
                          size: 18,
                          align: TextAlign.center,
                          color: textLightColor,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: AppTextOverPass(
                            text:
                                "This booking will be cancelled after the timer is at zero (0)",
                            fontWeight: FontWeight.w600,
                            size: 18,
                            align: TextAlign.center,
                            maxLines: 3,
                            color: HexColor("#474747"),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ));
}
