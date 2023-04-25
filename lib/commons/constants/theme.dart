import 'package:car_rental_for_car_owner/commons/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  primarySwatch: CustomColors.primaryMaterialColor,
  appBarTheme: const AppBarTheme(
    color: CustomColors.white,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: CustomColors.white,
    ),
  ),
  fontFamily: GoogleFonts.sourceSansPro().fontFamily,
);
