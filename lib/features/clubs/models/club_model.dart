class ClubModel {
  final String id;
  final String name;
  final String category;
  final String description;
  final int members;
  final int followers;
  final String adminName;
  final String adminRole;
  final String? imageUrl;

  ClubModel({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.members,
    required this.followers,
    required this.adminName,
    required this.adminRole,
    this.imageUrl,
  });
}