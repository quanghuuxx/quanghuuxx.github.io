import '../domain/profile.dart';
import 'profile_content_en.dart';
import 'profile_content_vi.dart';

/// Nội dung hồ sơ theo ngôn ngữ; ngôn ngữ khác `vi` dùng tiếng Anh.
Profile profileContentFor(String languageCode) =>
    languageCode == 'vi' ? profileContentVi : profileContentEn;
