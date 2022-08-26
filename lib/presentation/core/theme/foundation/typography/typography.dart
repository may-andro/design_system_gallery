import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _fontWeightRegular = FontWeight.w400;
const _fontWeightMedium = FontWeight.w500;
const _fontWeightSemiBold = FontWeight.w600;
const _fontWeightBold = FontWeight.w700;

final textTheme = TextTheme(
  headline1: GoogleFonts.montserrat(
    fontWeight: _fontWeightBold,
    fontSize: 28.0,
  ),
  headline2: GoogleFonts.montserrat(
    fontWeight: _fontWeightBold,
    fontSize: 24.0,
  ),
  headline3: GoogleFonts.montserrat(
    fontWeight: _fontWeightBold,
    fontSize: 22.0,
  ),
  headline4: GoogleFonts.montserrat(
    fontWeight: _fontWeightBold,
    fontSize: 20.0,
  ),
  headline5: GoogleFonts.oswald(
    fontWeight: _fontWeightMedium,
    fontSize: 16.0,
  ),
  headline6: GoogleFonts.montserrat(
    fontWeight: _fontWeightBold,
    fontSize: 16.0,
  ),
  caption: GoogleFonts.oswald(
    fontWeight: _fontWeightRegular,
    fontSize: 12.0,
  ),
  overline: GoogleFonts.montserrat(
    fontWeight: _fontWeightMedium,
    fontSize: 12.0,
  ),
  subtitle1: GoogleFonts.montserrat(
    fontWeight: _fontWeightMedium,
    fontSize: 16.0,
  ),
  subtitle2: GoogleFonts.montserrat(
    fontWeight: _fontWeightMedium,
    fontSize: 14.0,
  ),
  bodyText1: GoogleFonts.montserrat(
    fontWeight: _fontWeightRegular,
    fontSize: 14.0,
  ),
  bodyText2: GoogleFonts.montserrat(
    fontWeight: _fontWeightRegular,
    fontSize: 16.0,
  ),
  button: GoogleFonts.montserrat(
    fontWeight: _fontWeightSemiBold,
    fontSize: 16.0,
  ),
);