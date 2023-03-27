import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/uiproviders/extras_provider.dart';
import 'package:wishwayapp/services/allNavigation.dart';

class UiOperations {
  static Future delayScreen(BuildContext context, Widget page) async {
   await Future.delayed(const Duration(seconds: 2), () {
      
    }).whenComplete(() => PageRouting.removeAllToPage(context, page));
  }

  static Future carouselChange(BuildContext context, bool isNext) async {
    ExtraProvider provide = Provider.of<ExtraProvider>(context, listen: false);

    if (isNext) {
      provide.nextCarousel();
    } else {
      provide.previousCarousel();
    }
  }

  static Future selectSignupOption(
      BuildContext context, int id, bool tick) async {
    ExtraProvider provide = Provider.of<ExtraProvider>(context, listen: false);

    provide.selectSignupOptions(id, tick);
  }
}
