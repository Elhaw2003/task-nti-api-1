import 'package:flutter/material.dart';
import 'app_colors.dart';
class AppTextStyles{
  static  TextStyle titleTextStyle = const TextStyle(
     color: AppColors.primaryColor,
    fontWeight: FontWeight.w600,
    fontSize: 32
  );
  static  TextStyle whiteW600Size14 = const TextStyle(
     color: AppColors.white,
    fontWeight: FontWeight.w600,
    fontSize: 14
  );
  static  TextStyle blackW600Size16 = const TextStyle(
     color: AppColors.black,
    fontWeight: FontWeight.w600,
    fontSize: 16
  );
  static  TextStyle greyW400Size14 = const TextStyle(
     color: AppColors.greyOriginal,
    fontWeight: FontWeight.w400,
    fontSize: 14
  );
}