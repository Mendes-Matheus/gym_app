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
      PageView.builder(
        controller: controller.pageController,
        onPageChanged: (index) {
          if (index == 3) {
            controller.updatePageIndicator(2);  // Ensures index does not go beyond the last page
            controller.nextPage();
          } else {
            controller.updatePageIndicator(index);
          }
        },
        itemCount: 4,  // Extra page for detecting scroll beyond the last page
        itemBuilder: (context, index) {
          if (index == 3) {
            return Container();  // Empty container for the extra page
          }
          return OnBoardingPage(
            image: index == 0
                ? (dark ? TImages.onboardingImage1Dark : TImages.onboardingImage1Light)
                : index == 1
                ? TImages.onboardingImage2
                : TImages.onboardingImage3,
            title: index == 0
                ? TTexts.onboardTitle1
                : index == 1
                ? TTexts.onboardTitle2
                : TTexts.onboardTitle3,
            subTitle: index == 0
                ? TTexts.onboardingSubTitle1
                : index == 1
                ? TTexts.onboardingSubTitle2
                : TTexts.onboardingSubTitle3,
          );
        },
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
