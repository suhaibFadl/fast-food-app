import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Colors.orange;
const Color secondaryColor = Colors.lightGreen;

final ThemeData appTheme = ThemeData(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    titleLarge: TextStyle(
        letterSpacing: 2,
        fontSize: 40.0,
        fontWeight: FontWeight.bold,
        color: Colors.black),
    titleMedium: GoogleFonts.inter(
        fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black),
    titleSmall: GoogleFonts.inter(
        fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.black),
    bodyLarge: GoogleFonts.poppins(fontSize: 24.0, color: Colors.black),
    bodyMedium: GoogleFonts.poppins(fontSize: 18.0, color: Colors.black),
    bodySmall: GoogleFonts.poppins(fontSize: 14.0, color: Colors.black),
  ),
  // buttonTheme: const ButtonThemeData(
  //   buttonColor: primaryColor,
  //   textTheme: ButtonTextTheme.primary,
  // ),
);
