class Achievement {
  final String title;
  final String date;

  Achievement({required this.title, required this.date});
}

class ProfileModel {
  final String name;
  final String description;
  final List<Achievement> achievements;

  ProfileModel({
    required this.name,
    required this.description,
    required this.achievements,
  });
}
