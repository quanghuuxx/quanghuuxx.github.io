import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import '../../l10n/app_localizations.dart';
import '../domain/profile.dart';

const _contentMaxWidth = 960.0;
const _wideBreakpoint = 720.0;
const _menuBreakpoint = 800.0;

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({
    super.key,
    required this.profile,
    required this.onLocaleChanged,
  });

  final Profile profile;
  final ValueChanged<Locale> onLocaleChanged;

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  final _aboutKey = GlobalKey();
  final _skillsKey = GlobalKey();
  final _projectsKey = GlobalKey();
  final _experienceKey = GlobalKey();
  final _educationKey = GlobalKey();
  final _contactKey = GlobalKey();

  void _scrollTo(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 450),
      curve: Curves.easeInOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    final profile = widget.profile;
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth >= _wideBreakpoint;

          return Column(
            children: [
              _TopBar(
                name: profile.name,
                onLocaleChanged: widget.onLocaleChanged,
                items: constraints.maxWidth >= _menuBreakpoint
                    ? {
                        l10n.sectionAbout: () => _scrollTo(_aboutKey),
                        l10n.sectionSkills: () => _scrollTo(_skillsKey),
                        l10n.sectionProjects: () => _scrollTo(_projectsKey),
                        l10n.sectionExperience: () => _scrollTo(_experienceKey),
                        l10n.sectionEducation: () => _scrollTo(_educationKey),
                        l10n.sectionContact: () => _scrollTo(_contactKey),
                      }
                    : const {},
              ),
              Expanded(
                child: SelectionArea(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _Hero(
                          profile: profile,
                          isWide: isWide,
                          onViewProjects: () => _scrollTo(_projectsKey),
                        ),
                        _Section(
                          key: _aboutKey,
                          number: '01',
                          title: l10n.sectionAbout,
                          isWide: isWide,
                          child: _About(paragraphs: profile.about),
                        ),
                        _Section(
                          key: _skillsKey,
                          number: '02',
                          title: l10n.sectionSkills,
                          isWide: isWide,
                          child: _Skills(groups: profile.skillGroups),
                        ),
                        _Section(
                          key: _projectsKey,
                          number: '03',
                          title: l10n.sectionProjects,
                          isWide: isWide,
                          child: _Projects(profile: profile),
                        ),
                        _Section(
                          key: _experienceKey,
                          number: '04',
                          title: l10n.sectionExperience,
                          isWide: isWide,
                          child: _Timeline(
                            entries: [
                              for (final experience in profile.experiences)
                                _TimelineEntry(
                                  title: experience.company,
                                  subtitle:
                                      '${experience.role} · ${experience.period}',
                                  details: experience.highlights,
                                ),
                            ],
                          ),
                        ),
                        _Section(
                          key: _educationKey,
                          number: '05',
                          title: l10n.sectionEducation,
                          isWide: isWide,
                          child: _Timeline(
                            entries: [
                              for (final education in profile.educations)
                                _TimelineEntry(
                                  title: education.school,
                                  subtitle:
                                      '${education.major} · ${education.period}',
                                  details: education.details,
                                ),
                            ],
                          ),
                        ),
                        _Section(
                          key: _contactKey,
                          number: '06',
                          title: l10n.sectionContact,
                          isWide: isWide,
                          child: _Contacts(contacts: profile.contacts),
                        ),
                        const SizedBox(height: 48),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _Centered extends StatelessWidget {
  const _Centered({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: _contentMaxWidth),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SizedBox(width: double.infinity, child: child),
        ),
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar({
    required this.name,
    required this.items,
    required this.onLocaleChanged,
  });

  final String name;
  final ValueChanged<Locale> onLocaleChanged;
  final Map<String, VoidCallback> items;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: colors.outlineVariant)),
      ),
      child: _Centered(
        child: SizedBox(
          height: 64,
          child: Row(
            children: [
              Image.asset(
                'assets/images/avatar.jpeg',
                width: 24,
                height: 24,
                frameBuilder: (context, widget, frame, _) {
                  return ClipOval(child: widget);
                },
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              for (final item in items.entries)
                TextButton(
                  onPressed: item.value,
                  style: TextButton.styleFrom(
                    foregroundColor: colors.onSurface,
                  ),
                  child: Text(item.key),
                ),
              const SizedBox(width: 8),
              _LanguageSwitch(onChanged: onLocaleChanged),
            ],
          ),
        ),
      ),
    );
  }
}

class _LanguageSwitch extends StatelessWidget {
  const _LanguageSwitch({required this.onChanged});

  final ValueChanged<Locale> onChanged;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final current = Localizations.localeOf(context).languageCode;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (final locale in AppLocalizations.supportedLocales.reversed)
          TextButton(
            onPressed: () => onChanged(locale),
            style: TextButton.styleFrom(
              minimumSize: const Size(40, 36),
              padding: EdgeInsets.zero,
              foregroundColor: locale.languageCode == current
                  ? colors.primary
                  : colors.onSurfaceVariant,
              textStyle: TextStyle(
                fontSize: 13,
                fontFamily: 'BeVietnamPro',
                fontWeight: locale.languageCode == current
                    ? FontWeight.w800
                    : FontWeight.w400,
              ),
            ),
            child: Text(locale.languageCode.toUpperCase()),
          ),
      ],
    );
  }
}

class _Hero extends StatelessWidget {
  const _Hero({
    required this.profile,
    required this.isWide,
    required this.onViewProjects,
  });

  final Profile profile;
  final bool isWide;
  final VoidCallback onViewProjects;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final github = profile.contacts.where((c) => c.label == 'GitHub');

    return _Centered(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: isWide ? 112 : 64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${profile.role} · ${profile.location}'.toUpperCase(),
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                letterSpacing: 2,
                color: colors.primary,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              AppLocalizations.of(context).heroGreeting(profile.name),
              style: TextStyle(
                fontSize: isWide ? 80 : 46,
                height: 1.1,
                letterSpacing: isWide ? -2.5 : -1.2,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 28),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Text(
                profile.tagline,
                style: TextStyle(
                  fontSize: 20,
                  height: 1.6,
                  color: colors.onSurfaceVariant,
                ),
              ),
            ),
            const SizedBox(height: 36),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                FilledButton(
                  onPressed: onViewProjects,
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 18,
                    ),
                  ),
                  child: Text(AppLocalizations.of(context).viewProjects),
                ),
                for (final contact in github)
                  Link(
                    uri: Uri.parse(contact.url),
                    target: LinkTarget.blank,
                    builder: (context, followLink) => OutlinedButton(
                      onPressed: followLink,
                      style: OutlinedButton.styleFrom(
                        foregroundColor: colors.onSurface,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 18,
                        ),
                      ),
                      child: Text(contact.label),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({
    super.key,
    required this.number,
    required this.title,
    required this.isWide,
    required this.child,
  });

  final String number;
  final String title;
  final bool isWide;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final heading = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          number,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: colors.primary,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
        ),
      ],
    );

    return _Centered(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 56),
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: colors.outlineVariant)),
        ),
        child: isWide
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 240, child: heading),
                  Expanded(child: child),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [heading, const SizedBox(height: 24), child],
              ),
      ),
    );
  }
}

class _About extends StatelessWidget {
  const _About({required this.paragraphs});

  final List<String> paragraphs;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final (index, paragraph) in paragraphs.indexed) ...[
          if (index > 0) const SizedBox(height: 16),
          Text(paragraph, style: const TextStyle(fontSize: 18, height: 1.7)),
        ],
      ],
    );
  }
}

class _Subheading extends StatelessWidget {
  const _Subheading(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Text(
      text,
      style: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
        color: colors.onSurfaceVariant,
      ),
    );
  }
}

class _Skills extends StatelessWidget {
  const _Skills({required this.groups});

  final List<SkillGroup> groups;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final (index, group) in groups.indexed) ...[
          if (index > 0) const SizedBox(height: 28),
          _Subheading(group.title),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final skill in group.skills)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: colors.outlineVariant),
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Text(skill, style: const TextStyle(fontSize: 14)),
                ),
            ],
          ),
        ],
      ],
    );
  }
}

class _Projects extends StatelessWidget {
  const _Projects({required this.profile});

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _Subheading(l10n.personalProjects),
        const SizedBox(height: 20),
        _ProjectList(projects: profile.personalProjects, isProminent: true),
        const SizedBox(height: 56),
        _Subheading(l10n.companyProjects),
        const SizedBox(height: 20),
        _ProjectList(projects: profile.companyProjects, isProminent: false),
      ],
    );
  }
}

class _ProjectList extends StatelessWidget {
  const _ProjectList({required this.projects, required this.isProminent});

  final List<Project> projects;
  final bool isProminent;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final (index, project) in projects.indexed) ...[
          if (index > 0) const Divider(height: 48),
          _ProjectRow(project: project, isProminent: isProminent),
        ],
      ],
    );
  }
}

class _ProjectRow extends StatelessWidget {
  const _ProjectRow({required this.project, required this.isProminent});

  final Project project;
  final bool isProminent;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          project.title,
          style: TextStyle(
            fontSize: isProminent ? 28 : 20,
            fontWeight: FontWeight.w800,
            letterSpacing: isProminent ? -0.5 : 0,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          '${project.role} · ${project.period}',
          style: TextStyle(fontSize: 14, color: colors.primary),
        ),
        const SizedBox(height: 10),
        Text(
          project.description,
          style: const TextStyle(fontSize: 16, height: 1.6),
        ),
        const SizedBox(height: 8),
        Text(
          project.technologies.join(' · '),
          style: TextStyle(
            fontSize: 13,
            height: 1.6,
            color: colors.onSurfaceVariant,
          ),
        ),
        if (project.links.isNotEmpty) ...[
          const SizedBox(height: 8),
          Wrap(
            spacing: 4,
            children: [
              for (final link in project.links)
                Link(
                  uri: Uri.parse(link.url),
                  target: LinkTarget.blank,
                  builder: (context, followLink) => TextButton.icon(
                    onPressed: followLink,
                    icon: const Icon(Icons.arrow_outward, size: 16),
                    label: Text(link.label),
                  ),
                ),
            ],
          ),
        ],
      ],
    );
  }
}

class _TimelineEntry {
  const _TimelineEntry({
    required this.title,
    required this.subtitle,
    required this.details,
  });

  final String title;
  final String subtitle;
  final List<String> details;
}

class _Timeline extends StatelessWidget {
  const _Timeline({required this.entries});

  final List<_TimelineEntry> entries;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final (index, entry) in entries.indexed) ...[
          if (index > 0) const SizedBox(height: 36),
          Text(
            entry.title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 4),
          Text(
            entry.subtitle,
            style: TextStyle(fontSize: 14, color: colors.primary),
          ),
          const SizedBox(height: 10),
          for (final detail in entry.details)
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('–  ', style: TextStyle(height: 1.6)),
                  Expanded(
                    child: Text(
                      detail,
                      style: const TextStyle(fontSize: 16, height: 1.6),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ],
    );
  }
}

class _Contacts extends StatelessWidget {
  const _Contacts({required this.contacts});

  final List<ContactLink> contacts;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: [
        for (final contact in contacts)
          Link(
            uri: Uri.parse(contact.url),
            target: LinkTarget.blank,
            builder: (context, followLink) => OutlinedButton.icon(
              onPressed: followLink,
              icon: const Icon(Icons.arrow_outward, size: 18),
              label: Text(contact.label),
              style: OutlinedButton.styleFrom(
                foregroundColor: colors.onSurface,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 18,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
