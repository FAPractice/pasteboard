import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kColorLightPrimary = Color(0xFF0088FF);
const kColorDarkPrimary = Color(0xFF000000);

const kColorLightActivity = Color(0xFFF2F3F4);
const kColorDarkActivity = Color(0xFF222324);

const kColorLightCard = Color(0xFF0088FF);
const kColorDarkCard = Color(0xFF000000);

const kColorLightText = Color(0xFF0088FF);
const kColorDarkText = Color(0xFF000000);

const kColorLightTextAccent = Color(0xFF0088FF);
const kColorDarkTextAccent = Color(0xFF000000);

const kBorderRadiusActivity = 8.0;

var kTextThemeLightNormal = TextTheme(
  headline3: GoogleFonts.pacifico().copyWith(fontSize: 20),
  bodyText1: GoogleFonts.manrope().copyWith(fontWeight: FontWeight.bold),
);
var kTextThemeDarkNormal = TextTheme(
  headline3: GoogleFonts.pacifico().copyWith(
    fontSize: 20,
    color: kColorDarkText,
  ),
  bodyText1: GoogleFonts.manrope().copyWith(
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
  bodyText2: GoogleFonts.manrope().copyWith(color: kColorDarkText),
);
