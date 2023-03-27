import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/personal/home/navpages/home.dart';
import 'package:wishwayapp/presentation/screens/personal/home/profile/profile_screen.dart';
import 'package:wishwayapp/presentation/screens/personal/home/sendpackage/senders_detail_screen.dart';
import 'package:wishwayapp/presentation/uiproviders/extras_provider.dart';
import 'package:wishwayapp/presentation/widget/text.dart';

import '../../../../services/allNavigation.dart';
import 'businessnavpages/business_home.dart';

class BusinessHomeScreen extends StatefulWidget {
  const BusinessHomeScreen({super.key});

  @override
  State<BusinessHomeScreen> createState() => _BusinessHomeScreenState();
}

class _BusinessHomeScreenState extends State<BusinessHomeScreen> {
  PageController pageController = PageController();
  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   ExtraProvider index = Provider.of<ExtraProvider>(context, listen: false);
    //   index.changeNavIndex(0);
    // });
  }

  @override
  Widget build(BuildContext context) {
    ExtraProvider provide = Provider.of<ExtraProvider>(context, listen: false);
    ExtraProvider tabs = context.watch<ExtraProvider>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: <Widget>[
            tabs.navIndex == 2
                ? const ProfileScreen()
                : const BusinessHomeNav(),
            // const ProfileScreen(),
            // const ProfileScreen(),
          ],
          onPageChanged: (index) {
            provide.changeNavIndex(index);
          },
        ),
        bottomNavigationBar: CupertinoTabBar(
          currentIndex: context.watch<ExtraProvider>().navIndex,
          onTap: (index) async {
            provide.changeNavIndex(index);
          },
          items: [
            barItem('assets/icon/Home.svg', tabs.navIndex == 0 ? true : false,
                "Home"),
            barItem('', tabs.navIndex == 1 ? true : false, "Send Package"),
            barItem('assets/icon/Profile.svg',
                tabs.navIndex == 2 ? true : false, "Profile"),
          ],
          activeColor: primaryOrange,
          backgroundColor: backgroundColor,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            provide.changeNavIndex(0);
            provide.resetTimelineIndex(0);
            PageRouting.pushToPage(context, const SendersDetails());
          },
          isExtended: true,
          child: SvgPicture.asset(
            "assets/icon/sendpackage.svg",
            color: textLightColor,
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem barItem(String svgPath, bool isActive, String label) {
    return BottomNavigationBarItem(
      icon: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          svgPath == ""
              ? SizedBox.shrink()
              : SvgPicture.asset(
                  svgPath,
                  height: 26,
                  width: 26,
                  color: isActive ? primaryOrange : HexColor("#929292"),
                ),
          AppTextOverPass(
            text: label,
            size: 14,
            color: isActive == false && svgPath == ""
                ? textLightColor
                : isActive && svgPath != ""
                    ? primaryOrange
                    : isActive && svgPath == ""
                        ? primaryOrange
                        : HexColor("#929292"),
          )
        ],
      ),
    );
  }
}
