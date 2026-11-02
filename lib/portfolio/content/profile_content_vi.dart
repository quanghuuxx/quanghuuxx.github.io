import '../domain/profile.dart';

/// Nội dung tiếng Việt. Giữ khớp dự án, công nghệ và link với bản tiếng Anh.
///
/// Khi đổi tên, phần giới thiệu hoặc dự án cá nhân, nhớ sửa cả `web/index.html`.
const profileContentVi = Profile(
  name: 'Trần Hữu Quang',
  role: 'Mobile Developer',
  location: 'Hà Nội, Việt Nam',
  tagline:
      'Hơn 5 năm phát triển ứng dụng di động, thư viện mobile app, '
      'luôn đặt chất lượng code và chất lượng sản phẩm lên hàng đầu.',
  about: [
    'Tôi có hơn 4 năm kinh nghiệm phát triển ứng dụng di động với Flutter '
        'và 1 năm với Android Kotlin, iOS Swift. Tôi làm việc độc lập tốt, '
        'phối hợp hiệu quả trong nhóm và quen với quy trình Agile Scrum/Kanban.',
    'Tôi thường tìm hiểu sâu về framework, xây dựng các base component và '
        'module chuyên biệt cho dự án. Tôi đam mê học hỏi, khám phá và '
        'không ngừng hoàn thiện bản thân.',
  ],
  skillGroups: [
    SkillGroup(
      title: 'Framework & ngôn ngữ',
      skills: ['Flutter', 'Dart', 'Android Jetpack Compose', 'Kotlin', 'Java'],
    ),
    SkillGroup(
      title: 'Flutter',
      skills: [
        'BloC',
        'Riverpod',
        'Listenable',
        'Stream',
        'RxDart',
        'InheritedWidget',
        'Custom Paint',
        'Custom Render Object',
        'DevTools',
        'Matrix4',
        'Retrofit',
        'JSON Serializable',
        'SQLite',
        'Fragment Shader',
        'Get It (DI)',
        'Method Channel',
        'IAP',
        'AdMob',
      ],
    ),
    SkillGroup(
      title: 'Android Native (cơ bản)',
      skills: [
        'Layout XML',
        'Activity & Fragment',
        'Broadcast Receiver',
        'Services',
        'Content Provider',
        'ViewModel',
        'Jetpack Navigation',
        'Kotlin Coroutines',
        'Room',
        'ObjectBox',
        'Shared Preferences',
        'Koin (DI)',
        'Custom View',
        'Retrofit',
        'Home Widget',
      ],
    ),
    SkillGroup(
      title: 'Kiến trúc & nền tảng',
      skills: [
        'MVVM',
        'Clean Architecture',
        'Firebase',
        'RESTful API',
        'Dependency Injection',
        'CI/CD',
        'Cấu trúc dữ liệu & giải thuật',
      ],
    ),
    SkillGroup(
      title: 'Công cụ',
      skills: [
        'Git',
        'Bitbucket',
        'Sourcetree',
        'Redmine',
        'Jira',
        'VS Code',
        'Android Studio',
        'Xcode',
      ],
    ),
    SkillGroup(
      title: 'AI Agent',
      skills: [
        'Claude Code',
        'Codex CLI',
        'Pi Code',
        'MCP/Skills',
        'Agent Planning',
        'Agent Orchestration',
        'Phân tích codebase',
        'Code review & debug với AI',
      ],
    ),
  ],
  projects: [
    Project(
      title: 'J2ME Box',
      period: '09/2026 – nay',
      role: 'Mobile Developer',
      isPersonal: true,
      description:
          'Ứng dụng Android native giả lập, cho phép chạy các ứng dụng '
          'J2ME, MIDlet trên Android.',
      technologies: [
        'Android Jetpack Compose',
        'Worker',
        'Services',
        'DEX convert',
        'Custom View',
        'Shared Preferences',
      ],
      links: [
        ContactLink(
          label: 'Android',
          url:
              'https://play.google.com/store/apps/details?id=vn.quanghuuxx.j2me_box',
        ),
      ],
    ),
    Project(
      title: 'Pic Sketch',
      period: '04/2025 – 07/2025',
      role: 'Flutter Developer, UI/UX',
      isPersonal: true,
      description:
          'Ứng dụng chỉnh sửa ảnh nhỏ gọn, xử lý ảnh bằng FragmentShader (GPU), '
          'Matrix4, Image, Canvas và nén ảnh.',
      technologies: [
        'Flutter',
        'Riverpod',
        'IAP (RevenueCat)',
        'Dependency Injection',
        'FragmentShader',
        'Shared Preferences',
        'ObjectBox',
        'Firebase Remote Config',
        'PhotoManager',
      ],
      links: [
        ContactLink(
          label: 'Android',
          url:
              'https://play.google.com/store/apps/details?id=vn.quanghuuxx.pic_sketch',
        ),
      ],
    ),
    Project(
      title: 'CMC C-Shield',
      period: '11/2025 – nay',
      role: 'Mobile Developer',
      description:
          'SDK bảo mật di động với ba lớp bảo vệ: RASP phát hiện và phản ứng với '
          'debugger, root/jailbreak, emulator, chứng chỉ CA giả; RIP phát hiện '
          'hooking, tampering; AIP bảo vệ giao tiếp app–server bằng certificate '
          'pinning và ký request/response.',
      technologies: [
        'C++',
        'Device Binding',
        'Android JNI',
        'iOS Objective-C++',
        'Swift',
        'Java',
        'Flutter',
        'React Native',
      ],
      links: [
        ContactLink(
          label: 'Flutter SDK',
          url: 'https://pub.dev/packages/c_shield_sdk',
        ),
        ContactLink(
          label: 'React Native SDK',
          url: 'https://www.npmjs.com/package/react-native-c-shield',
        ),
      ],
    ),
    Project(
      title: 'CMC Remote Signing',
      period: '09/2025 – 12/2025',
      role: 'Mobile Developer',
      description:
          'Ứng dụng giúp cá nhân và tổ chức ký số tài liệu trên di động.',
      technologies: [
        'Flutter',
        'BloC',
        'Dependency Injection',
        'SQLite',
        'Firebase',
        'Local Notifications',
        'eKYC',
        'NFC',
      ],
      links: [
        ContactLink(
          label: 'Android',
          url: 'https://play.google.com/store/apps/details?id=com.cmc.ca.rsign',
        ),
      ],
    ),
    Project(
      title: 'CMC Mobile Security',
      period: '09/2025 – 12/2025',
      role: 'Mobile Developer',
      description:
          'Ứng dụng lọc cuộc gọi, tin nhắn rác và lừa đảo, quét virus trên '
          'Android và cập nhật tin tức.',
      technologies: [
        'Flutter',
        'BloC',
        'Dependency Injection',
        'SQLite',
        'Firebase',
        'Local Notifications',
        'Native core',
      ],
      // Link iOS trong CV đang trỏ nhầm sang app Thi Tốt nên chưa đưa vào.
      links: [
        ContactLink(
          label: 'Android',
          url: 'https://play.google.com/store/apps/details?id=com.cmc.ms',
        ),
      ],
    ),
    Project(
      title: 'Piscale Chat SDK',
      period: '02/2025 – 06/2025',
      role: 'Flutter Developer',
      description:
          'Thư viện tích hợp module chat và chatbot của công ty vào dự án '
          'Flutter của khách hàng: chat 1-1, chat nhóm, chatbot và các tính '
          'năng liên quan.',
      technologies: [
        'Flutter',
        'Provider',
        'RESTful API',
        'MQTT (WebSocket)',
        'Realm',
        'Firebase Remote Config',
        'Firebase Cloud Messaging',
        'Local Notifications',
      ],
      links: [
        ContactLink(
          label: 'pub.dev',
          url: 'https://pub.dev/packages/piscale_chat_flutter',
        ),
      ],
    ),
    Project(
      title: 'Novel Full',
      period: '10/2023 – 02/2025',
      role: 'Flutter Developer (Sub-lead++)',
      description:
          'Ứng dụng tìm kiếm và đọc truyện. Phát triển các module đăng nhập, '
          'thể loại quan tâm, đọc truyện, nghe truyện audio, xuất bản và viết '
          'truyện cho tác giả.',
      technologies: [
        'Flutter',
        'BloC',
        'RESTful API',
        'Dependency Injection',
        'SQLite',
        'Firebase',
      ],
      // Link Google Play trong CV hiện trả về 404 nên chưa đưa vào.
      links: [
        ContactLink(
          label: 'iOS',
          url: 'https://apps.apple.com/vn/app/id6473779186',
        ),
      ],
    ),
    Project(
      title: 'U Love',
      period: '06/2023 – 02/2025',
      role: 'Flutter Developer (Sub-lead++)',
      description:
          'Ứng dụng đếm ngày yêu và nhật ký tình yêu cho các cặp đôi. Xây dựng '
          'cơ chế đếm ngày giờ, đồng bộ dữ liệu với Home Widget và Screen Lock '
          '(Activity Overlay) trên Android native.',
      technologies: [
        'Flutter',
        'BloC',
        'Dependency Injection',
        'SQLite',
        'Firebase Remote Config',
        'Firebase Cloud Messaging',
      ],
      links: [
        ContactLink(
          label: 'Android',
          url: 'https://play.google.com/store/apps/details?id=vn.qsoft.ulove',
        ),
        ContactLink(
          label: 'iOS',
          url: 'https://apps.apple.com/vn/app/id6457257048',
        ),
      ],
    ),
    Project(
      title: 'Emoji Kitchen',
      period: '01/2024 – 02/2024',
      role: 'Flutter Developer (Sub-lead)',
      description:
          'Ứng dụng/game ghép emoji. Xây dựng base, logic ghép hai emoji bất kỳ, '
          'cơ chế sinh ngẫu nhiên câu hỏi, luồng chơi và lưu dữ liệu game.',
      technologies: [
        'Flutter',
        'BloC',
        'SQLite',
        'Firebase Remote Config',
        'Firebase Cloud Messaging',
      ],
      links: [
        ContactLink(
          label: 'Android',
          url:
              'https://play.google.com/store/apps/details?id=com.qglobal.funny.emojikitchen',
        ),
      ],
    ),
    // Link Google Play trong CV hiện trả về 404 nên chưa đưa vào.
    Project(
      title: 'Edit 1s',
      period: '12/2023 – 02/2024',
      role: 'Flutter Developer',
      description:
          'Ứng dụng chỉnh sửa ảnh bằng AI. Xây dựng base project và luồng gọi '
          'API xử lý ảnh, phát triển các module làm nét, phục hồi ảnh, xóa nền '
          'và nhận diện vật thể.',
      technologies: [
        'Flutter',
        'BloC',
        'RESTful API',
        'SQLite',
        'Firebase',
        'Google ML Kit Face Detection',
      ],
    ),
    Project(
      title: 'Thi Tốt',
      period: '07/2021 – 02/2024',
      role: 'Flutter Developer',
      description:
          'Ứng dụng học tập, ôn luyện và hỏi đáp cho học sinh THCS, THPT và ôn '
          'thi đại học. Phát triển các module lý thuyết, bài tập, kiểm tra và '
          'thi online.',
      technologies: [
        'Flutter',
        'BloC',
        'RESTful API',
        'WebView MathJax',
        'SQLite',
        'Firebase',
      ],
      links: [
        ContactLink(
          label: 'Android',
          url:
              'https://play.google.com/store/apps/details?id=vn.qsoft.chinhxac',
        ),
        ContactLink(
          label: 'iOS',
          url: 'https://apps.apple.com/vn/app/id1579917080',
        ),
      ],
    ),
    Project(
      title: 'Pic Collage',
      period: '12/2021 – 11/2023',
      role: 'Flutter Developer (Sub-lead)',
      description:
          'Ứng dụng tạo và chỉnh sửa ảnh theo mẫu, khung có sẵn: thêm chữ, '
          'sticker, vẽ lên ảnh, làm việc nhiều với canvas, Matrix4 và filter '
          'ảnh. Tham gia xây dựng cả app quản trị.',
      technologies: [
        'Flutter',
        'BloC',
        'RESTful API',
        'SQLite',
        'Firebase Remote Config',
        'Firebase Cloud Messaging',
      ],
      links: [
        ContactLink(
          label: 'Android',
          url:
              'https://play.google.com/store/apps/details?id=vn.qsoft.blingbling',
        ),
        ContactLink(
          label: 'iOS',
          url: 'https://apps.apple.com/vn/app/id1613267447',
        ),
      ],
    ),
    Project(
      title: 'Học Tốt 12',
      period: '03/2023 – 11/2023',
      role: 'Flutter Developer (Sub-lead)',
      description:
          'Ứng dụng offline nhỏ từ Thi Tốt, giúp học sinh lớp 12 học và ôn thi. '
          'Phát triển module lý thuyết, bài tập, kiểm tra; xử lý truy vấn SQLite '
          'cục bộ.',
      technologies: [
        'Flutter',
        'BloC',
        'SQLite',
        'Firebase Authentication',
        'Firebase Remote Config',
        'Firebase Cloud Messaging',
      ],
      // Link Google Play trong CV hiện trả về 404 nên chưa đưa vào.
      links: [
        ContactLink(
          label: 'iOS',
          url: 'https://apps.apple.com/vn/app/id6449421769',
        ),
      ],
    ),
    Project(
      title: 'Text on Photo',
      period: '03/2023 – 11/2023',
      role: 'Flutter Developer',
      description:
          'Ứng dụng nhỏ từ Pic Collage để thêm chữ, sticker lên ảnh và chỉnh '
          'sửa ảnh nền.',
      technologies: [
        'Flutter',
        'BloC',
        'RESTful API',
        'SQLite',
        'Firebase Remote Config',
        'Firebase Cloud Messaging',
      ],
      links: [
        ContactLink(
          label: 'Android',
          url:
              'https://play.google.com/store/apps/details?id=vn.qsoft.textonphoto',
        ),
        ContactLink(
          label: 'iOS',
          url: 'https://apps.apple.com/vn/app/id6447428448',
        ),
      ],
    ),
  ],
  experiences: [
    Experience(
      period: '09/2025 – nay',
      company: 'CMC Cyber Security',
      role: 'Mobile Developer',
      highlights: [
        'Bảo trì và migrate các dự án chính của công ty.',
        'Nghiên cứu công nghệ mới, phát triển tính năng, sửa lỗi và tối ưu hiệu năng.',
        'Xây dựng và cung cấp SDK cho khách hàng.',
        'Phối hợp với các nhóm Pentest, Tester, BE theo Agile Scrum và Kanban.',
        'Phát hành ứng dụng lên Google Play, App Store và TestFlight.',
      ],
    ),
    Experience(
      period: '02/2025 – 06/2025',
      company: 'PISCALE Co., Ltd.',
      role: 'Flutter Developer',
      highlights: [
        'Bảo trì và migrate các dự án chính của công ty.',
        'Nghiên cứu công nghệ mới, phát triển tính năng, sửa lỗi và tối ưu hiệu năng.',
        'Phối hợp với các nhóm BA, Tester, BE theo Agile Scrum và Kanban.',
        'Phát hành ứng dụng lên Google Play, App Store và TestFlight.',
      ],
    ),
    Experience(
      period: '06/2021 – 02/2025',
      company: 'QSOFT IT & Telecom Solutions Co., Ltd.',
      role: 'Flutter Developer (Sub-lead++)',
      highlights: [
        'Phân công công việc, review code và theo dõi tiến độ của nhóm.',
        'Hỗ trợ nhóm 3–5 thành viên và đào tạo nhân viên mới.',
        'Dựng codebase cho các dự án; bảo trì và migrate các dự án chính.',
        'Nghiên cứu công nghệ mới, phát triển tính năng, sửa lỗi và tối ưu hiệu năng.',
      ],
    ),
    Experience(
      period: '01/2021 – 04/2021',
      company: 'VAWAY Company Limited – VIETANH',
      role: 'Intern Flutter Developer',
      highlights: [
        'Học hỏi và phối hợp với đội kỹ thuật để xây dựng ứng dụng di động thực tế.',
      ],
    ),
  ],
  educations: [
    Education(
      period: '06/2017 – 06/2021',
      school: 'Đại học Thái Bình',
      major: 'Công nghệ Thông tin',
      details: [
        'Tốt nghiệp loại Khá.',
        'Đồ án tốt nghiệp: ứng dụng tìm kiếm tích hợp Google Maps, dùng Firebase '
            '(Cloud Firestore, Authentication) làm backend.',
      ],
    ),
  ],
  contacts: [
    ContactLink(label: 'GitHub', url: 'https://github.com/quanghuuxx'),
    ContactLink(label: 'Email', url: 'mailto:quanghuuxx@gmail.com'),
  ],
);
