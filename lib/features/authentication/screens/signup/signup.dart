import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:msm_gym_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:msm_gym_app/features/authentication/screens/signup/widgets/signup_header.dart';
import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/constants/texts.dart';
import '../../../../util/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _signup(context),
    );
  }
}

Widget _signup(BuildContext context) {
  final dark = THelperFunctions.isDarkMode(context);
  return SingleChildScrollView(
    child: Padding(
        padding: SpacingStyles.paddingWithAppBarHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SignupHeader,
            const SignupHeader(),
            const SizedBox(height: TSizes.defaultSpacing),
            // SignupForm,
            const SignupForm(),
            const SizedBox(height: TSizes.spacingBetweenSections),
            // SignupDivider,
            FormDivider(
                dark: dark, dividerText: TTexts.orSignInWith.capitalize!),
            const SizedBox(height: TSizes.spacingBetweenItems),

            /// Social Media Buttons
            const SocialButtons(),
          ],
        )),
  );
}




