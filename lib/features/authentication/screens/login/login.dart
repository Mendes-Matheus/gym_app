import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../util/constants/image_strings.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/constants/texts.dart';
import '../../../../util/helpers/helper_functions.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _loginUI(context),
    );
  }
}

Widget _loginUI(BuildContext context) {
  final dark = THelperFunctions.isDarkMode(context);
  return SingleChildScrollView(
    child: Padding(
      padding: SpacingStyles.paddingWithAppBarHeight,
      child: Column(
        children: [
          /// Login, Title and Subtitle
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                height: 150,
                image: AssetImage(
                  dark? TImages.logoDark : TImages.logoLight,
                ),
              ),
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
          ),
          Form(
            child: Column(
              children: [
                /// Email
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: TTexts.email,
                    prefixIcon: Icon(Iconsax.direct_right),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
