import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:msm_gym_app/features/authentication/screens/login/login.dart';
import 'package:msm_gym_app/util/constants/sizes.dart';
import 'package:msm_gym_app/util/constants/texts.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          alignment: Alignment.topLeft,
          onPressed: () => Get.to(() => const LoginScreen()),
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
        const SizedBox(height: TSizes.spacingBetweenItems),
        Text(
          TTexts.singUpHeading,
          style: Theme.of(context).textTheme.headlineMedium,
        )
      ],
    );
  }
}