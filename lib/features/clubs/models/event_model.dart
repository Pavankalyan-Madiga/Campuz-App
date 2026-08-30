class EventModel {
  final String id;
  final String title;
  final String organization;
  final String description;
  final String date;
  final String time;
  final String venue;
  final String category;
  final List<String> highlights;
  final List<String> technicalAreas;
  final String? additionalSectionTitle;
  final String? additionalSectionDescription;
  final String? culturalSectionTitle;
  final String? culturalSectionDescription;
  final String? imageUrl;

  EventModel({
    required this.id,
    required this.title,
    required this.organization,
    required this.description,
    required this.date,
    required this.time,
    required this.venue,
    required this.category,
    required this.highlights,
    required this.technicalAreas,
    this.additionalSectionTitle,
    this.additionalSectionDescription,
    this.culturalSectionTitle,
    this.culturalSectionDescription,
    this.imageUrl,
  });
}