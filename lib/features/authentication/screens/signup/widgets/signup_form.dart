import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
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
          Wrap(
            alignment: WrapAlignment.start,
            children: [
              SizedBox(
                width: 20,
                height: Checkbox.width,
                child: Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              // Text.rich(
              //   TextSpan(
              //     children: [
              //       TextSpan(
              //         text: TTexts.iAgreeTo,
              //         style: Theme.of(context).textTheme.labelMedium,
              //       ),
              //       TextSpan(
              //         text: TTexts.privacyPolicy,
              //         style: Theme.of(context).textTheme.labelMedium,
              //       ),
              //       TextSpan(
              //         text: TTexts.termsOfUse,
              //         style: Theme.of(context).textTheme.labelMedium,
              //       ),
              //     ],
              //   ),
              // ),
              Text(
                TTexts.iAgreeTo,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                TTexts.privacyPolicy,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                TTexts.termsOfUse,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
          const SizedBox(height: TSizes.spacingBetweenSections),
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