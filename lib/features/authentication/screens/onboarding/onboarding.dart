import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:msm_gym_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:msm_gym_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:msm_gym_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:msm_gym_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import '../../../../util/constants/image_strings.dart';
import '../../../../util/constants/texts.dart';
import '../../../../util/helpers/helper_functions.dart';
import '../../../authentication/controllers/onboarding/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUI(context),
    );
  }
}

Widget _buildUI(BuildContext context) {
  final controller = Get.put(OnboardingController());
  final dark = THelperFunctions.isDarkMode(context);
  return Stack(
    children: [
      /// Horizontal Scrollable Pages
      PageView(
        controller: controller.pageController,
        onPageChanged: controller.updatePageIndicator,
        children: [
          OnBoardingPage(
            image: dark
                ? TImages.onboardingImage1Dark
                : TImages.onboardingImage1Light,
            title: TTexts.onboardTitle1,
            subTitle: TTexts.onboardingSubTitle1,
          ),
          const OnBoardingPage(
            image: TImages.onboardingImage2,
            title: TTexts.onboardTitle2,
            subTitle: TTexts.onboardingSubTitle2,
          ),
          const OnBoardingPage(
            image: TImages.onboardingImage3,
            title: TTexts.onboardTitle3,
            subTitle: TTexts.onboardingSubTitle3,
          ),
        ],
      ),

      /// Skip Button
      const OnBoardingSkip(),

      /// Dot Navigation SmoothPage Indicator
      const OnBoardingDotNavigation(),

      /// Circular Button
      const OnBoardingNextButton(),
    ],
  );
}
