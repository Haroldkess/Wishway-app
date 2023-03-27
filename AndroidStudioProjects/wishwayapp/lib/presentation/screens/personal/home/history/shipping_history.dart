import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/personal/home/history/extra/delivered.dart';
import 'package:wishwayapp/presentation/screens/personal/home/history/extra/pending.dart';
import 'package:wishwayapp/presentation/widget/text.dart';

import '../../../../../services/allNavigation.dart';

class ShippingHistoryScreen extends StatefulWidget {
  const ShippingHistoryScreen({super.key});

  @override
  State<ShippingHistoryScreen> createState() => _ShippingHistoryScreenState();
}

class _ShippingHistoryScreenState extends State<ShippingHistoryScreen>
    with TickerProviderStateMixin {
  TabController? controller;
  int index = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: darkCard,
            title: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  InkWell(
                      onTap: () => PageRouting.popToPage(context),
                      splashColor: darkCard,
                      highlightColor: darkCard,
                      focusColor: darkCard,
                      child: Container(
                        height: 24,
                        width: 24,
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
                            height: 14,
                            width: 8,
                            color: textLightColor,
                          ),
                        ),
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  AppTextOverPass(
                    text: "Shipping History",
                    fontWeight: FontWeight.w700,
                    size: 24,
                    color: textLightColor,
                  ),
                ],
              ),
            ),
            toolbarHeight: 110,
            flexibleSpace: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TabBar(
                  controller: controller,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  onTap: (val) {
                    setState(() {
                      index = val;
                    });
                  },
                  tabs: const [
                    Tab(
                      text: "Pending",
                    ),
                    Tab(
                      text: "History",
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: index == 0 ? const Pending() : const Delivered()),
    );
  }
}
