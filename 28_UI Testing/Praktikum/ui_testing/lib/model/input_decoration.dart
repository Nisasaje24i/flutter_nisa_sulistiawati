import 'package:flutter/material.dart';
import 'package:ui_testing/theme/color.dart';

class InputDecorationStyle {
  static inputDecorationStyle(String labelText, String hintText) =>
      InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(3),
          ),
          borderSide: BorderSide(color: AppColors.greyColor),
        ),
        labelText: labelText,
        hintText: hintText,
      );
}
