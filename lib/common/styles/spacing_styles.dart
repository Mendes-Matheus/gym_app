import 'package:flutter/material.dart';
import '../../util/constants/sizes.dart';

class SpacingStyles {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    right: TSizes.defaultSpacing,
    left: TSizes.defaultSpacing,
    bottom: TSizes.defaultSpacing,
  );
}