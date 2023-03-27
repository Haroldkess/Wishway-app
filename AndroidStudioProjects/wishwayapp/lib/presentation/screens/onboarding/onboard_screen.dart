import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/constant/color_pallate.dart';
import 'package:wishwayapp/presentation/screens/landing/landing_screen.dart';
import 'package:wishwayapp/presentation/screens/onboarding/onboardextra/onboard_buttons.dart';
import 'package:wishwayapp/presentation/screens/onboarding/onboardextra/onboard_details.dart';
import 'package:wishwayapp/presentation/screens/onboarding/onboardextra/onboard_indicator.dart';
import 'package:wishwayapp/presentation/uiproviders/extras_provider.dart';
import 'package:wishwayapp/presentation/widget/spaces.dart';
import 'package:wishwayapp/presentation/widget/text.dart';
import 'package:wishwayapp/services/allNavigation.dart';
import 'package:wishwayapp/services/operations.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final size = Provider.of<ExtraProvider>(context, listen: false);
    ExtraProvider index = context.watch<ExtraProvider>();

    return Scaffold(
        backgroundColor: backgroundColor,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.amber,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppSpaces(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () => PageRouting.pushToPage(
                          context, const LandingScreen()),
                      child: AppTextOverPass(
                        text: "Skip",
                        color: textLightColor,
                        fontWeight: FontWeight.w600,
                        size: 16,
                      ),
                    )
                  ],
                ),
                const AppSpaces(
                  height: 20,
                ),
                const OnboardDetails(),
                const OnboardingIndicator(),
                const AppSpaces(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: index.index == 0
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.spaceBetween,
                  children: [
                    index.index == 0
                        ? const SizedBox.shrink()
                        : OnboardingButton(
                            isClicked: () =>
                                UiOperations.carouselChange(context, false),
                            iconColor: primaryOrange,
                            color: Colors.transparent,
                            isRight: false),
                    index.index == 2
                        ? TextButton(
                            onPressed: () => PageRouting.pushToPage(
                                context, const LandingScreen()),
                            child: AppTextOverPass(
                              text: "Continue",
                              color: textLightColor,
                              fontWeight: FontWeight.w600,
                              size: 16,
                            ))
                        : OnboardingButton(
                            isClicked: () =>
                                UiOperations.carouselChange(context, true),
                            iconColor: textLightColor,
                            color: primaryOrange,
                            isRight: true),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
