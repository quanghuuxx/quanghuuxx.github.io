import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/l10n/app_localizations.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/portfolio/content/profile_content.dart';
import 'package:portfolio/portfolio/domain/profile.dart';
import 'package:portfolio/portfolio/ui/portfolio_page.dart';
import 'package:portfolio/portfolio/ui/portfolio_theme.dart';

const _companyProject = Project(
  title: 'Dự án công ty',
  period: '2024',
  role: 'Dev',
  description: 'Mô tả công ty',
  technologies: ['Flutter'],
);

const _personalProject = Project(
  title: 'Dự án cá nhân A',
  period: '2025',
  role: 'Dev',
  description: 'Mô tả cá nhân',
  technologies: ['Dart'],
  isPersonal: true,
  links: [ContactLink(label: 'Android', url: 'https://a.b')],
);

// Cố ý đặt dự án công ty trước để kiểm tra thứ tự hiển thị.
const _profile = Profile(
  name: 'Tên',
  role: 'Developer',
  location: 'Hà Nội',
  tagline: 'Dòng giới thiệu ngắn',
  about: ['Đoạn giới thiệu dài'],
  skillGroups: [
    SkillGroup(title: 'Nhóm kỹ năng', skills: ['Kỹ năng A']),
  ],
  projects: [_companyProject, _personalProject],
  experiences: [
    Experience(
      period: '2020',
      company: 'Công ty X',
      role: 'Dev',
      highlights: ['Việc đã làm'],
    ),
  ],
  educations: [
    Education(
      period: '2017',
      school: 'Trường Y',
      major: 'CNTT',
      details: ['Tốt nghiệp'],
    ),
  ],
  contacts: [
    ContactLink(label: 'GitHub', url: 'https://github.com/x'),
    ContactLink(label: 'Email', url: 'mailto:a@b.c'),
  ],
);

Widget _testApp({TransitionBuilder? builder}) => MaterialApp(
  theme: portfolioTheme,
  locale: const Locale('vi'),
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  builder: builder,
  home: PortfolioPage(profile: _profile, onLocaleChanged: (_) {}),
);

Future<void> _pumpPage(WidgetTester tester, Size size) async {
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  await tester.pumpWidget(_testApp());
}

void main() {
  // Đo bằng font thật; font mặc định của flutter_test rộng hơn nhiều so với web.
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    final loader = FontLoader('BeVietnamPro');
    for (final weight in ['Regular', 'SemiBold', 'ExtraBold']) {
      loader.addFont(rootBundle.load('assets/fonts/BeVietnamPro-$weight.ttf'));
    }
    await loader.load();
  });

  testWidgets('hiển thị nội dung của profile', (tester) async {
    await _pumpPage(tester, const Size(1280, 4000));

    for (final text in [
      'Dòng giới thiệu ngắn',
      'Đoạn giới thiệu dài',
      'Nhóm kỹ năng',
      'Kỹ năng A',
      'Mô tả cá nhân',
      'Mô tả công ty',
      'Công ty X',
      'Việc đã làm',
      'Trường Y',
      'Email',
    ]) {
      expect(find.text(text), findsOneWidget, reason: text);
    }
  });

  testWidgets('dự án cá nhân hiển thị trước dự án công ty', (tester) async {
    await _pumpPage(tester, const Size(1280, 4000));

    expect(
      tester.getTopLeft(find.text('Dự án cá nhân A')).dy,
      lessThan(tester.getTopLeft(find.text('Dự án công ty')).dy),
    );
  });

  testWidgets('chỉ hiện link của dự án có link', (tester) async {
    await _pumpPage(tester, const Size(1280, 4000));

    expect(find.text('Android'), findsOneWidget);
  });

  testWidgets('bấm menu cuộn đến đúng section', (tester) async {
    await _pumpPage(tester, const Size(1280, 500));
    final emailButton = find.text('Email');
    final yBefore = tester.getTopLeft(emailButton).dy;

    await tester.tap(find.widgetWithText(TextButton, 'Liên hệ'));
    await tester.pumpAndSettle();

    expect(tester.getTopLeft(emailButton).dy, lessThan(yBefore));
    expect(tester.getTopLeft(emailButton).dy, lessThan(500));
  });

  testWidgets('hero thẳng lề trái với các section', (tester) async {
    await _pumpPage(tester, const Size(1280, 4000));

    expect(
      tester.getTopLeft(find.text('Dòng giới thiệu ngắn')).dx,
      tester.getTopLeft(find.text('01')).dx,
    );
  });

  testWidgets('màn hình điện thoại ẩn menu và không bị tràn', (tester) async {
    await _pumpPage(tester, const Size(360, 800));

    expect(find.widgetWithText(TextButton, 'Liên hệ'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('thanh trên cùng vừa ở độ rộng hẹp nhất có menu', (tester) async {
    tester.view.physicalSize = const Size(800, 1000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(const PortfolioApp());
    await tester.pumpAndSettle();
    expect(find.widgetWithText(TextButton, 'Contact'), findsOneWidget);
    expect(tester.takeException(), isNull);

    await tester.tap(find.widgetWithText(TextButton, 'VI'));
    await tester.pumpAndSettle();
    expect(find.widgetWithText(TextButton, 'Liên hệ'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('nút chuyển ngôn ngữ đổi cả giao diện và nội dung', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1280, 4000);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    await tester.pumpWidget(const PortfolioApp());
    await tester.pumpAndSettle();

    // Môi trường test mặc định là en-US.
    expect(find.text('View projects'), findsOneWidget);
    expect(find.text('Thai Binh University'), findsOneWidget);

    await tester.tap(find.widgetWithText(TextButton, 'VI'));
    await tester.pumpAndSettle();

    expect(find.text('Xem dự án'), findsOneWidget);
    expect(find.text('Đại học Thái Bình'), findsOneWidget);
    expect(find.text('View projects'), findsNothing);

    await tester.tap(find.widgetWithText(TextButton, 'EN'));
    await tester.pumpAndSettle();

    expect(find.text('View projects'), findsOneWidget);
  });

  test('ngôn ngữ không hỗ trợ dùng nội dung tiếng Anh', () {
    expect(profileContentFor('fr'), same(profileContentFor('en')));
    expect(profileContentFor('vi'), isNot(same(profileContentFor('en'))));
  });

  group('nội dung thật', () {
    final vi = profileContentFor('vi');
    final en = profileContentFor('en');

    test('J2ME Box và Pic Sketch là dự án cá nhân', () {
      for (final profile in [vi, en]) {
        expect(profile.personalProjects.map((p) => p.title), [
          'J2ME Box',
          'Pic Sketch',
        ]);
        expect(profile.companyProjects, hasLength(12));
      }
    });

    test('hai ngôn ngữ khớp dự án, công nghệ và link', () {
      List<Object> facts(Profile profile) => [
        for (final project in profile.projects) ...[
          project.title,
          project.role,
          ...project.technologies,
          ...project.links.map((link) => link.url),
        ],
        for (final contact in profile.contacts) contact.url,
      ];

      expect(facts(en), facts(vi));
      expect(
        en.skillGroups.map((group) => group.skills.length),
        vi.skillGroups.map((group) => group.skills.length),
      );
      expect(en.experiences, hasLength(vi.experiences.length));
    });
  });
}
