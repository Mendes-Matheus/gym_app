import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              width: THelperFunctions.screenWidth() * 0.8,
              height: THelperFunctions.screenHeight() * 0.6,
              image: const AssetImage(
                TImages.verifySendEmail,
              ),
            ),
          ),
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

class VerificationCodeInput extends StatefulWidget {
  const VerificationCodeInput({super.key});

  @override
  State<VerificationCodeInput> createState() => _VerificationCodeInputState();
}

class _VerificationCodeInputState extends State<VerificationCodeInput> {
  final int codeLength = 6;
  final List<TextEditingController> controllers = [];
  final List<FocusNode> focusNodes = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < codeLength; i++) {
      controllers.add(TextEditingController());
      focusNodes.add(FocusNode());
    }
  }

  @override
  void dispose() {
    for (int i = 0; i < codeLength; i++) {
      controllers[i].dispose();
      focusNodes[i].dispose();
    }
    super.dispose();
  }

  void _nextField(String value, int index) {
    if (value.length == 1) {
      if (index < codeLength - 1) {
        FocusScope.of(context).requestFocus(focusNodes[index + 1]);
      } else {
        focusNodes[index].unfocus();
      }
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(focusNodes[index - 1]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(codeLength, (index) {
        return SizedBox(
          width: 40,
          height: 40,
          child: TextField(
            controller: controllers[index],
            focusNode: focusNodes[index],
            maxLength: 1,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              counterText: "",
            ),
            keyboardType: TextInputType.text,
            onChanged: (value) => _nextField(value, index),
          ),
        );
      }),
    );
  }
}
