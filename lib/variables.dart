import 'package:flutter/material.dart';

class Variables {
  // const added to be able to change it on runtime
  static const double text_font_size = 20;

  static screenWidth(context) {
    return MediaQuery.of(context).size.width;
  }

  static TextStyle text_style_header = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static TextStyle text_style = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}
