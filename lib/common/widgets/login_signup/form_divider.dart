import 'package:flutter/material.dart';
import '../../../util/constants/colors.dart';
import '../../../util/constants/texts.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dark,
    required this.dividerText,
  });

  final String dividerText;

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGreyColor : TColors.greyColor,
            thickness: 0.5,
            indent: 30,
            endIndent: 5,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGreyColor : TColors.greyColor,
            thickness: 0.5,
            indent: 5,
            endIndent: 30,
          ),
        ),
      ],
    );
  }
}
