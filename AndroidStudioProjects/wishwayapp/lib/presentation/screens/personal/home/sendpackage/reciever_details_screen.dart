import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/personal/home/sendpackage/sendextra/recievers_form.dart';
import 'package:wishwayapp/presentation/screens/personal/home/sendpackage/sendextra/senders_form.dart';
import 'package:wishwayapp/presentation/screens/personal/home/sendpackage/sendextra/sending_timeline.dart';

import '../../../../../services/allNavigation.dart';
import '../../../../uiproviders/extras_provider.dart';
import '../../../../widget/text.dart';

class RecieverDetails extends StatelessWidget {
  const RecieverDetails({super.key});

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
                text: "Send Package",
                fontWeight: FontWeight.w600,
                size: 16,
                color: textLightColor,
              ),
            ],
          )),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SendingTimeLine(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: RecieverForm(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
