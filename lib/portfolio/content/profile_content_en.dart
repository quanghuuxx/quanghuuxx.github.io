import '../domain/profile.dart';

/// Nội dung tiếng Anh. Giữ khớp dự án, công nghệ và link với bản tiếng Việt.
const profileContentEn = Profile(
  name: 'Tran Huu Quang',
  role: 'Mobile Developer',
  location: 'Hanoi, Vietnam',
  tagline:
      'Over 5 years building mobile apps and SDKs, '
      'always putting code quality and product quality first.',
  about: [
    'I have over 5 years of experience in mobile app development with Flutter '
        'and 1 year with Android Kotlin and iOS Swift. I work well '
        'independently, collaborate effectively in a team, and am experienced '
        'with Agile Scrum/Kanban.',
    'I frequently delve into frameworks, develop base components, and create '
        'specialized modules for projects. I am passionate about learning, '
        'exploring, and self-improvement.',
  ],
  skillGroups: [
    SkillGroup(
      title: 'Frameworks & languages',
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
      title: 'Android Native (basic)',
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
      title: 'Architecture & platforms',
      skills: [
        'MVVM',
        'Clean Architecture',
        'Firebase',
        'RESTful API',
        'Dependency Injection',
        'CI/CD',
        'Data Structures & Algorithms',
      ],
    ),
    SkillGroup(
      title: 'Tools',
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
        'Codebase analysis',
        'AI-assisted code review & debugging',
      ],
    ),
  ],
  projects: [
    Project(
      title: 'J2ME Box',
      period: '09/2026 – Present',
      role: 'Mobile Developer',
      isPersonal: true,
      description:
          'An Android native emulator app for running J2ME and MIDlet '
          'applications on Android.',
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
          'A small image editing app that processes images using FragmentShader '
          '(GPU), Matrix4, Image, Canvas, and compression.',
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
      period: '11/2025 – Present',
      role: 'Mobile Developer',
      description:
          'A mobile security SDK with three protection layers: RASP detects and '
          'responds to debuggers, root/jailbreak, emulators, and fake CA '
          'certificates; RIP detects hooking and tampering; AIP protects '
          'app–server communication through certificate pinning and '
          'request/response signing.',
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
          'A mobile app that helps individuals and organizations digitally sign '
          'documents.',
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
          'A mobile app for filtering calls, spam messages, and scams, scanning '
          'for viruses on Android, and delivering news updates.',
      technologies: [
        'Flutter',
        'BloC',
        'Dependency Injection',
        'SQLite',
        'Firebase',
        'Local Notifications',
        'Native core',
      ],
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
          'A library that integrates the company’s chat and chatbot modules into '
          'customers’ Flutter projects: one-on-one chat, group chat, chatbot, '
          'and related features.',
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
          'An app for searching and reading novels. Built modules for login, '
          'favorite categories, reading, audio stories, and author publishing '
          'and writing.',
      technologies: [
        'Flutter',
        'BloC',
        'RESTful API',
        'Dependency Injection',
        'SQLite',
        'Firebase',
      ],
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
          'A love day counter and diary app for couples. Built the day and hour '
          'counting mechanism, and data sync with Home Widget and Screen Lock '
          '(Activity Overlay) on native Android.',
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
          'An emoji matching app and game. Built the base, the logic for matching '
          'any two emojis, randomized question sets, the game flow, and game '
          'data storage.',
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
    Project(
      title: 'Edit 1s',
      period: '12/2023 – 02/2024',
      role: 'Flutter Developer',
      description:
          'An AI photo editing app. Built the base project and the flow for '
          'calling image processing APIs, and developed sharpening, photo '
          'restoration, background removal, and object detection modules.',
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
          'A learning, revision, and Q&A app for middle and high school students '
          'and university entrance exam preparation. Developed theory, exercise, '
          'test, and online exam modules.',
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
          'An app for creating and editing photos with templates and frames: '
          'text, stickers, and drawing, working extensively with canvas, Matrix4, '
          'and image filters. Also helped build the admin app.',
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
          'A small offline app from Thi Tốt for 12th-grade study and exam '
          'preparation. Developed theory, exercise, and test modules, and handled '
          'local SQLite queries.',
      technologies: [
        'Flutter',
        'BloC',
        'SQLite',
        'Firebase Authentication',
        'Firebase Remote Config',
        'Firebase Cloud Messaging',
      ],
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
          'A small app from Pic Collage for adding text and stickers to photos '
          'and editing background images.',
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
      period: '09/2025 – Present',
      company: 'CMC Cyber Security',
      role: 'Mobile Developer',
      highlights: [
        'Maintain and migrate the company’s main projects.',
        'Research new technologies, develop features, fix bugs, and optimize performance.',
        'Build and provide SDKs to customers.',
        'Collaborate with Pentest, Tester, and BE teams under Agile Scrum and Kanban.',
        'Submit apps to Google Play, the App Store, and TestFlight.',
      ],
    ),
    Experience(
      period: '02/2025 – 06/2025',
      company: 'PISCALE Co., Ltd.',
      role: 'Flutter Developer',
      highlights: [
        'Maintained and migrated the company’s main projects.',
        'Researched new technologies, developed features, fixed bugs, and optimized performance.',
        'Collaborated with BA, Tester, and BE teams under Agile Scrum and Kanban.',
        'Submitted apps to Google Play, the App Store, and TestFlight.',
      ],
    ),
    Experience(
      period: '06/2021 – 02/2025',
      company: 'QSOFT IT & Telecom Solutions Co., Ltd.',
      role: 'Flutter Developer (Sub-lead++)',
      highlights: [
        'Assigned tasks, reviewed code, and monitored team progress.',
        'Supported a team of 3–5 members and trained new employees.',
        'Set up project codebases; maintained and migrated the main projects.',
        'Researched new technologies, developed features, fixed bugs, and optimized performance.',
      ],
    ),
    Experience(
      period: '01/2021 – 04/2021',
      company: 'VAWAY Company Limited – VIETANH',
      role: 'Intern Flutter Developer',
      highlights: [
        'Learned and collaborated with the technical team to build real-world mobile apps.',
      ],
    ),
  ],
  educations: [
    Education(
      period: '06/2017 – 06/2021',
      school: 'Thai Binh University',
      major: 'Information Technology',
      details: [
        'Graduated with a Good grade.',
        'Graduation project: a search app integrated with Google Maps, using '
            'Firebase (Cloud Firestore, Authentication) as the backend.',
      ],
    ),
  ],
  contacts: [
    ContactLink(label: 'GitHub', url: 'https://github.com/quanghuuxx'),
    ContactLink(label: 'Email', url: 'mailto:quanghuuxx@gmail.com'),
  ],
);
