// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get sectionAbout => 'Giới thiệu';

  @override
  String get sectionSkills => 'Kỹ năng';

  @override
  String get sectionProjects => 'Dự án';

  @override
  String get sectionExperience => 'Kinh nghiệm';

  @override
  String get sectionEducation => 'Học vấn';

  @override
  String get sectionContact => 'Liên hệ';

  @override
  String heroGreeting(String name) {
    return 'Xin chào, tôi là\n$name.';
  }

  @override
  String get viewProjects => 'Xem dự án';

  @override
  String get personalProjects => 'Dự án cá nhân';

  @override
  String get companyProjects => 'Dự án tại công ty';
}
