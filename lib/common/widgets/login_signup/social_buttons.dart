import 'package:flutter/material.dart';
import 'package:msm_gym_app/util/constants/colors.dart';
import 'package:msm_gym_app/util/constants/image_strings.dart';
import 'package:msm_gym_app/util/constants/sizes.dart';

import '../../../util/helpers/helper_functions.dart';


class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.greyColor),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSizes.iconMedium,
              height: TSizes.iconMedium,
              image: AssetImage(TImages.googleLogo),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.greyColor),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: TSizes.iconMedium,
              height: TSizes.iconMedium,
              image: AssetImage(dark ? TImages.xLogoDark : TImages.xLogoLight),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.greyColor),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSizes.iconMedium,
              height: TSizes.iconMedium,
              image: AssetImage(TImages.facebookLogo),
            ),
          ),
        ),
      ],
    );
  }
}
