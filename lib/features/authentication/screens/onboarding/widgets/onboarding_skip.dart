import 'package:flutter/material.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/device/device_utility.dart';
import '../../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtility.getAppBarHeight(),
      right: TSizes.defaultSpacing,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        child: Text(
          "Skip",
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}