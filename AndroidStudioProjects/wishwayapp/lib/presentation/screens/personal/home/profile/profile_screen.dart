import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/model/ui_model.dart';
import 'package:wishwayapp/presentation/screens/personal/home/profile/profileextra/profile_id.dart';
import 'package:wishwayapp/presentation/screens/personal/home/profile/profileextra/profile_info.dart';
import 'package:wishwayapp/presentation/screens/personal/home/profile/profileextra/settings_tile.dart';
import 'package:wishwayapp/presentation/uiproviders/extras_provider.dart';

import '../../../../widget/text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ExtraProvider size = Provider.of<ExtraProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
            child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const ProfileInfo(),
            const SizedBox(
              height: 30,
            ),
            const ProfileId(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: setting
                    .map((e) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: ProfileTile(path: e.svgPath, title: e.title),
                        ))
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icon/logout.svg",
                  color: primaryOrange,
                ),
                const SizedBox(
                  width: 10,
                ),
                AppTextOverPass(
                  text: "Logout",
                  fontWeight: FontWeight.w600,
                  size: 18,
                  align: TextAlign.center,
                  color: primaryOrange,
                ),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
          ],
        )),
      ),
    );
  }
}
