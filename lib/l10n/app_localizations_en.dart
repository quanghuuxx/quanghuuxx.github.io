// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get sectionAbout => 'About';

  @override
  String get sectionSkills => 'Skills';

  @override
  String get sectionProjects => 'Projects';

  @override
  String get sectionExperience => 'Experience';

  @override
  String get sectionEducation => 'Education';

  @override
  String get sectionContact => 'Contact';

  @override
  String heroGreeting(String name) {
    return 'Hi, I\'m\n$name.';
  }

  @override
  String get viewProjects => 'View projects';

  @override
  String get personalProjects => 'Personal projects';

  @override
  String get companyProjects => 'Company projects';
}
