import 'package:flutter/material.dart';

mixin CustomColors {
  static const primaryMaterialColor = MaterialColor(
    0xFF343434,
    <int, Color>{
      50: Color(0xFF999999),
      100: Color(0xFF858585),
      200: Color(0xFF707070),
      300: Color(0xFF5c5c5c),
      400: Color(0xFF484848),
      500: Color(0xFF343434),
      600: Color(0xff292929),
      700: Color(0xFF1f1f1f),
      800: Color(0xFF141414),
      900: Color(0xFF0a0a0a),
    },
  );
  static const primary = Color(0xFF343434);
  static const red = Color(0xFFD43860);
  static const gold = Color(0xFFFFCA51);
  static const background = Color(0xFFFFFFFF);
  static const editTextBgColor = gainsboro;

  // Complementary
  static const ochre = Color(0xFFE39F48);
  static const cream = Color(0xFFFCF4B2);
  static const purple = Color(0xFF9251AC);
  static const pink = Color(0xFFFFE0F5);
  static const darkGreen = Color(0xFF159570);
  static const lightGreen = Color(0xFF2ecc71);
  static const neonBlue = Color(0xFF635BFF);
  static const periwinkle = Color(0xFFE8E6FF);
  static const cerulean = Color(0xFF217AB7);
  static const babyBlue = Color(0xFFC4F0FF);

  // Monochrome
  static const black = Color(0xFF000000);
  static const jetBlack = Color(0xFF343434);
  static const dimGray = Color(0xFF696969);
  static const silver = Color(0xFFC4C4C4);
  static const gainsboro = Color(0xFFEEEEEE);
  static const white = Color(0xFFFFFFFF);

  // Miscellaneous
  static const warning = CustomColors.ochre;
  static const error = CustomColors.red;
  static const success = CustomColors.darkGreen;
  static const disabled = CustomColors.silver;

  // calendar color
  static const tomato = Color(0xffd50000);
  static const flamingo = Color(0xffe67c73);
  static const banana = Color(0xfff6bf26);
  static const tangerine = Color(0xfff4511e);
  static const sage = Color(0xff33b679);
  static const peacock = Color(0xff039be5);
  static const lavender = Color(0xff7986cb);
  static const graphite = Color(0xff616161);
}
