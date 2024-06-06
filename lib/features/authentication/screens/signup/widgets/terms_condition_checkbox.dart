import 'package:flutter/material.dart';
import '../../../../../util/constants/texts.dart';


class TermsAndConditionCheckbox extends StatelessWidget {
  const TermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
              height: Checkbox.width,
              child: Checkbox(
                value: true,
                onChanged: (value) {},
              ),
            ),
            Text(
              TTexts.iAgreeTo,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            TextButton(
              style: const ButtonStyle(
                padding: WidgetStatePropertyAll(EdgeInsets.zero),
              ),
              onPressed: () {},
              child: Text(TTexts.privacyPolicy,
                  style: Theme.of(context).textTheme.labelMedium!.apply(
                    decoration: TextDecoration.underline,
                    color: Theme.of(context).colorScheme.primary,
                    decorationColor:
                    Theme.of(context).colorScheme.primary,
                  )),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TTexts.andThe,
              style: Theme.of(context).textTheme.labelSmall,
              // style: Theme.of(context).textTheme.labelMedium,
            ),
            TextButton(
              style: const ButtonStyle(
                alignment: Alignment(0, -2.1),
                padding: WidgetStatePropertyAll(
                  EdgeInsets.zero,
                ),
              ),
              onPressed: () {},
              child: Text(
                TTexts.termsOfUse,
                style: Theme.of(context).textTheme.labelMedium!.apply(
                  decoration: TextDecoration.underline,
                  color: Theme.of(context).colorScheme.primary,
                  decorationColor: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            Text(
              ".",
              style: Theme.of(context).textTheme.labelSmall,
              // style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
      ],
    );
  }
}