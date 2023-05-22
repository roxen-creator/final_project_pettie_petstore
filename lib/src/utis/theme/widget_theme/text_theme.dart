import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class TTextTHeme {
  TTextTHeme._();

  static TextTheme lightTextTheme = TextTheme(
    displaySmall: GoogleFonts.montserrat(
      color: Colors.black87,
      fontSize: 18.0,
      fontWeight: FontWeight.w700,
    ),
    
    displayMedium: GoogleFonts.montserrat(
      color: Colors.black87,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    ),
      displayLarge: GoogleFonts.montserrat(
      color: Colors.black87,
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: GoogleFonts.poppins(
      color: Colors.black54,
      fontSize: 16.0,
    ),
    bodyMedium: GoogleFonts.poppins(
      color: Colors.black54,
      fontSize: 14.0,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    displaySmall: GoogleFonts.montserrat(
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: GoogleFonts.montserrat(
      color: Colors.white,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    ),
      displayLarge: GoogleFonts.montserrat(
      color: Colors.black87,
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 16.0,
    ),
    bodyMedium: GoogleFonts.poppins(
      color: Colors.white54,
      fontSize: 14.0,
    ),
  );
}
