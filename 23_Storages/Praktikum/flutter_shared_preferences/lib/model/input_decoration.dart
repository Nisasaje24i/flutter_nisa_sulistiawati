import 'package:flutter/material.dart';

class InputDecorationStyle {
  static inputDecorationStyle(String labelText, String hintText) =>
      InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(3),
          ),
          borderSide: BorderSide(color: Colors.grey),
        ),
        labelText: labelText,
        hintText: hintText,
      );
}
