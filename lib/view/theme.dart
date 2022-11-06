import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData get lightTheme {
  final base = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: Colors.indigo,
    brightness: Brightness.light,
  );

  return base.copyWith(
    textTheme: GoogleFonts.mPlus1pTextTheme(base.textTheme),
  );
}

ThemeData get darkTheme {
  final base = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: Colors.indigo,
    brightness: Brightness.dark,
  );

  return base.copyWith(
    textTheme: GoogleFonts.mPlus1pTextTheme(base.textTheme),
  );
}
