class CampusPostModel {
  final String id;
  final String authorName;
  final String authorRole;
  final String authorInitial;
  final String dateTime;
  final String title;
  final String content;
  final String postType;
  final bool isUrgent;
  final List<CampusPostAttachment> attachments;
  final int likeCount;
  final int loveCount;
  final int smileCount;
  final int insightCount;

  const CampusPostModel({
    required this.id,
    required this.authorName,
    required this.authorRole,
    required this.authorInitial,
    required this.dateTime,
    required this.title,
    required this.content,
    required this.postType,
    required this.isUrgent,
    this.attachments = const [],
    this.likeCount = 0,
    this.loveCount = 0,
    this.smileCount = 0,
    this.insightCount = 0,
  });
}

class CampusPostAttachment {
  final String name;
  final String type;
  final String path;

  const CampusPostAttachment({
    required this.name,
    required this.type,
    required this.path,
  });

  bool get isImage {
    return [
      'jpg',
      'jpeg',
      'png',
      'webp',
      'gif',
      'image',
    ].contains(type.toLowerCase());
  }
}