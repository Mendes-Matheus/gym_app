import 'package:flutter/material.dart';
import 'package:msm_gym_app/util/constants/image_strings.dart';
import 'package:msm_gym_app/util/constants/sizes.dart';
import 'package:msm_gym_app/util/constants/texts.dart';
import 'package:msm_gym_app/util/helpers/helper_functions.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
            dark ? TImages.logoDark : TImages.logoLight,
          ),
        ),
        const SizedBox(height: TSizes.medium),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: TSizes.small),
        Text(
          TTexts.loginSubtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}