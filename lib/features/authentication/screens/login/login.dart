import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../util/constants/colors.dart';
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
                  dark ? TImages.logoDark : TImages.logoLight,
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
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: TSizes.defaultSpacing),
              child: Column(
                children: [
                  /// Email
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: TTexts.email,
                      prefixIcon: Icon(Iconsax.direct_right),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBetweenInputFields),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: TTexts.password,
                      prefixIcon: Icon(Iconsax.password_check),
                      suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBetweenInputFields / 2),

                  /// Remember and Forget Password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          /// Remember me
                          Checkbox(
                            value: true,
                            onChanged: (value) {},
                          ),
                          Text(
                            TTexts.rememberMe,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),

                          /// Forget Password
                          TextButton(
                            onPressed: () {},
                            child: const Text(TTexts.forgetPassword),
                          ),

                          /// Sign Button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(TTexts.signIn),
                            ),
                          ),
                          const SizedBox(height: TSizes.spacingBetweenItems),

                          /// Create Account Button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(TTexts.createAccount),
                            ),
                          ),
                          const SizedBox(height: TSizes.spacingBetweenSections),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),

          /// Divider
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Divider(
                color: dark ? TColors.darkGreyColor : TColors.greyColor,
                thickness: 0.5,
                indent: 60,
                endIndent: 5,
              ),
            ],
          )
        ],
      ),
    ),
  );
}
