import 'package:flutter/material.dart';

import 'l10n/app_localizations.dart';
import 'portfolio/content/profile_content.dart';
import 'portfolio/ui/portfolio_page.dart';
import 'portfolio/ui/portfolio_theme.dart';

void main() => runApp(const PortfolioApp());

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({super.key});

  @override
  State<PortfolioApp> createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  /// `null` nghĩa là theo ngôn ngữ của trình duyệt.
  Locale? _locale;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) {
        final profile = profileContentFor(
          Localizations.localeOf(context).languageCode,
        );
        return '${profile.name} — ${profile.role}';
      },
      debugShowCheckedModeBanner: false,
      theme: portfolioTheme,
      darkTheme: portfolioDarkTheme,
      themeMode: ThemeMode.system,
      locale: _locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Builder(
        builder: (context) => PortfolioPage(
          profile: profileContentFor(
            Localizations.localeOf(context).languageCode,
          ),
          onLocaleChanged: (locale) => setState(() => _locale = locale),
        ),
      ),
    );
  }
}
