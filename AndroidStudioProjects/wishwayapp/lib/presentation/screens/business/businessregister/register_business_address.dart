import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/screens/business/businessregister/businessextra/business_details_form.dart';
import 'package:wishwayapp/presentation/screens/business/businessregister/businessextra/registeration_address_form.dart';
import 'package:wishwayapp/presentation/screens/business/businessregister/businessextra/registeration_timeline.dart';

import '../../../constant/color_pallate.dart';
import '../../../uiproviders/extras_provider.dart';
import '../../../widget/spaces.dart';
import '../../personal/login/loginextra/banner.dart';
import '../../personal/register/registerextra/delivery_address.dart';
import '../../personal/register/registerextra/progress_tracker.dart';
import '../../personal/register/registerextra/register_header.dart';

class RegisterBusinessAddress extends StatelessWidget {
  const RegisterBusinessAddress({super.key});

  @override
  Widget build(BuildContext context) {
    ExtraProvider size = Provider.of<ExtraProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppSpaces(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: const RegisterHeader(),
              ),
              const AppSpaces(
                height: 10,
              ),
              const LoginRegisterBanner(
                title: "Register as a Business",
                subTitle:
                    "For best experience, please complete your business details.",
                svgPath: "assets/icon/businessreg.svg",
                //  register_img
              ),
              RegistrationTimeLine(),
              const AppSpaces(
                height: 20,
              ),
              const BusinessAddressForm(),
              const AppSpaces(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
