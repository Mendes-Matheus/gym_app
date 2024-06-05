import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:msm_gym_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:msm_gym_app/common/widgets/login_signup/form_divider.dart';
import 'package:msm_gym_app/common/widgets/login_signup/social_buttons.dart';
import 'package:msm_gym_app/features/authentication/screens/login/widgets/login_header.dart';
import '../../../../common/styles/spacing_styles.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Login, Title and Subtitle
          LoginHeader(dark: dark),
          const SizedBox(height: TSizes.defaultSpacing),

          /// Login Form
          const LoginForm(),
          const SizedBox(height: TSizes.spacingBetweenSections),


          /// Divider
          FormDivider(dark: dark, dividerText: TTexts.orSignInWith.capitalize!),
          const SizedBox(height: TSizes.spacingBetweenItems),

          /// Social Media Buttons
          const SocialButtons(),
        ],
      ),
    ),
  );
}

