import 'package:flutter/material.dart';

const paperColor = Color(0xFFF7F5EF);
const inkColor = Color(0xFF17191E);
const mutedColor = Color(0xFF62656D);
const lineColor = Color(0xFFD9D6CC);
const accentColor = Color(0xFF1F4FD8);

final portfolioTheme = ThemeData(
  fontFamily: 'BeVietnamPro',
  scaffoldBackgroundColor: paperColor,
  dividerColor: lineColor,
  colorScheme: ColorScheme.fromSeed(
    seedColor: accentColor,
  ).copyWith(primary: accentColor, surface: paperColor, onSurface: inkColor),
);
