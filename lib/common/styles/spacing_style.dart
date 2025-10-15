import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class CustomSpacingStyle{
  static  EdgeInsetsGeometry paddingWithAppBarHeight =  EdgeInsets.only(
    top: Sizes.appBarHeight,
    left: Sizes.defaultSpace,
    bottom: Sizes.defaultSpace,
    right: Sizes.defaultSpace,
  );
}