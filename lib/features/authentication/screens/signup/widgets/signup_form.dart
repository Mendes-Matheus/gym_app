import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:msm_gym_app/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/constants/texts.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Name
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.name,
              prefixIcon: Icon(Iconsax.profile_circle),
            ),
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields),
          // Username
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.profile_tick),
            ),
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields),
          // Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Icons.email_outlined),
            ),
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields),
          // Telephone
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Icons.phone_outlined),
            ),
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields),
          // Password
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields),
          // Confirm Password
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.confirmPassword,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields),
          // Privacy Policy and Terms Use
          const TermsAndConditionCheckbox(),
          // Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(TTexts.createAccount),
            ),
          )
        ],
      ),
    );
  }
}
