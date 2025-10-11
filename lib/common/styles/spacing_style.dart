import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class CustomSpacingStyle{
  static  EdgeInsetsGeometry paddingWithAppBarHeight =  EdgeInsets.only(
    top: CustomSizes.appBarHeight,
    left: CustomSizes.defaultSpace,
    bottom: CustomSizes.defaultSpace,
    right: CustomSizes.defaultSpace,
  );
}