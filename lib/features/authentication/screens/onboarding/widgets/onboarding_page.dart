import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../util/constants/sizes.dart';
import '../../../../../util/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpacing),
      child: Column(
        children: [
          Center(
            child: Lottie.asset(
              image,
              height: THelperFunctions.screenHeight() * 0.6,
              width: THelperFunctions.screenWidth() * 0.8,
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
            ),
          ),
          // Image(
          //   width: THelperFunctions.screenWidth() * 0.8,
          //   height: THelperFunctions.screenHeight() * 0.6,
          //   image: const AssetImage(image),
          // ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spacingBetweenItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}