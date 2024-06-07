import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../util/constants/image_strings.dart'; // Certifique-se que o caminho está correto
import '../../../../util/constants/sizes.dart';
import '../../../../util/constants/texts.dart';
import '../../../../util/helpers/helper_functions.dart';

class AccountCreatedSuccessScreen extends StatelessWidget {
  const AccountCreatedSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _accountCreatedSuccessScreen(context);
  }
}

Widget _accountCreatedSuccessScreen(BuildContext context) {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpacing),
      child: Column(
        children: [
          Center(
            child: Image(
              width: THelperFunctions.screenWidth() * 0.8,
              height: THelperFunctions.screenHeight() * 0.6,
              image: const AssetImage(
                TImages.accountCreated3,
              ),
            ),
          ),
          Text(
            TTexts.accountCreatedTitle,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spacingBetweenItems),
          Text(
            TTexts.accountCreatedSubtitle,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spacingBetweenSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const AccountCreatedSuccessScreen()),
              child: const Text(TTexts.keepGoing),
            ),
          ),
        ],
      ),
    ),
  );
}
