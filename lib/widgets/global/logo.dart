import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/colors.dart';

Widget logo({
  required double width,
  required double height
}) {
  return SvgPicture.asset(
    "assets/image/logo.svg",
    color: ConstColors.green,
    width: width,
    height: height,
  );
}
