class Profile {
  const Profile({
    required this.name,
    required this.role,
    required this.location,
    required this.tagline,
    required this.about,
    required this.skillGroups,
    required this.projects,
    required this.experiences,
    required this.educations,
    required this.contacts,
  });

  final String name;
  final String role;
  final String location;
  final String tagline;
  final List<String> about;
  final List<SkillGroup> skillGroups;
  final List<Project> projects;
  final List<Experience> experiences;
  final List<Education> educations;
  final List<ContactLink> contacts;

  /// Dự án cá nhân luôn được hiển thị trước dự án công ty.
  List<Project> get personalProjects =>
      projects.where((project) => project.isPersonal).toList();

  List<Project> get companyProjects =>
      projects.where((project) => !project.isPersonal).toList();
}

class SkillGroup {
  const SkillGroup({required this.title, required this.skills});

  final String title;
  final List<String> skills;
}

class Project {
  const Project({
    required this.title,
    required this.period,
    required this.role,
    required this.description,
    required this.technologies,
    this.links = const [],
    this.isPersonal = false,
  });

  final String title;
  final String period;
  final String role;
  final String description;
  final List<String> technologies;
  final List<ContactLink> links;
  final bool isPersonal;
}

class Experience {
  const Experience({
    required this.period,
    required this.company,
    required this.role,
    required this.highlights,
  });

  final String period;
  final String company;
  final String role;
  final List<String> highlights;
}

class Education {
  const Education({
    required this.period,
    required this.school,
    required this.major,
    required this.details,
  });

  final String period;
  final String school;
  final String major;
  final List<String> details;
}

class ContactLink {
  const ContactLink({required this.label, required this.url});

  final String label;
  final String url;
}
