import 'package:flutter/material.dart';

final portfolioTheme = _buildTheme(
  brightness: Brightness.light,
  paper: const Color(0xFFF7F5EF),
  ink: const Color(0xFF17191E),
  muted: const Color(0xFF62656D),
  line: const Color(0xFFD9D6CC),
  accent: const Color(0xFF1F4FD8),
  onAccent: Colors.white,
);

final portfolioDarkTheme = _buildTheme(
  brightness: Brightness.dark,
  paper: const Color(0xFF14161A),
  ink: const Color(0xFFECEAE3),
  muted: const Color(0xFFA2A5AD),
  line: const Color(0xFF33363D),
  accent: const Color(0xFF8FA8FF),
  onAccent: const Color(0xFF0E1730),
);

ThemeData _buildTheme({
  required Brightness brightness,
  required Color paper,
  required Color ink,
  required Color muted,
  required Color line,
  required Color accent,
  required Color onAccent,
}) {
  return ThemeData(
    fontFamily: 'BeVietnamPro',
    scaffoldBackgroundColor: paper,
    dividerColor: line,
    colorScheme: ColorScheme.fromSeed(seedColor: accent, brightness: brightness)
        .copyWith(
          primary: accent,
          onPrimary: onAccent,
          surface: paper,
          onSurface: ink,
          onSurfaceVariant: muted,
          outlineVariant: line,
        ),
  );
}
