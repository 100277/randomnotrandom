import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme(BuildContext context) {
  return ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: false,
      color: Colors.blue,
      elevation: 0.0,

    ),
    textTheme: GoogleFonts.acmeTextTheme(
      Theme.of(context).textTheme,
    ),
    useMaterial3: true,

  );
}