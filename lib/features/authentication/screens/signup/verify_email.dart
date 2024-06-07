import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/login_signup/verification_code_input.dart';
import '../../../../util/constants/image_strings.dart'; // Certifique-se que o caminho está correto
import '../../../../util/constants/sizes.dart';
import '../../../../util/constants/texts.dart';
import '../../../../util/helpers/helper_functions.dart';
import 'account_created_success.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _verifyEmail(context),
    );
  }
}

Widget _verifyEmail(BuildContext context) {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpacing),
      child: Column(
        children: [
          Center(
            child: Image(
              width: THelperFunctions.screenWidth() * 0.7,
              height: THelperFunctions.screenHeight() * 0.4,
              image: const AssetImage(
                TImages.verifySendEmail,
              ),
            ),
          ),
          const SizedBox(height: TSizes.spacingBetweenSections),
          Text(
            TTexts.confirmEmailTitle,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spacingBetweenItems),
          Text(
            TTexts.confirmEmailSubtitle,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spacingBetweenSections),
          const VerificationCodeInput(),
          const SizedBox(height: TSizes.spacingBetweenSections * 2),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const AccountCreatedSuccessScreen()),
              child: const Text(TTexts.keepGoing),
            ),
          ),
          const SizedBox(height: TSizes.spacingBetweenSections),
          TextButton(
            onPressed: () => Get.to(() => const AccountCreatedSuccessScreen()),
            child: const Text(TTexts.resendEmail),
          ),
        ],
      ),
    ),
  );
}

