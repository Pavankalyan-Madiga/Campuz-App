import 'package:flutter/material.dart';

class AnnouncementCard extends StatelessWidget {
  final String initials;
  final String teacher;
  final String subject;
  final String message;
  final String time;
  final String tag;
  final Color avatarColor;
  final Color subjectColor;
  final Color subjectTextColor;
  final bool showDownload;

  const AnnouncementCard({
    super.key,
    required this.initials,
    required this.teacher,
    required this.subject,
    required this.message,
    required this.time,
    required this.tag,
    required this.avatarColor,
    required this.subjectColor,
    required this.subjectTextColor,
    this.showDownload = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xffEEEEF3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 48,
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: avatarColor,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  initials,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: subjectTextColor,
                  ),
                ),
              ),

              const SizedBox(width: 14),

              Expanded(
                child: Text(
                  teacher,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  color: subjectColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  subject,
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                    color: subjectTextColor,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          Text(
            message,
            style: const TextStyle(
              fontSize: 14,
              height: 1.5,
              color: Color(0xff414650),
            ),
          ),

          if (showDownload) ...[
            const SizedBox(height: 14),

            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xffF8F9FC),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.picture_as_pdf_outlined,
                    color: Color(0xffD75B62),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Text(
                      tag,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  const Icon(
                    Icons.download_rounded,
                    color: Color(0xff5146D8),
                  ),
                ],
              ),
            ),
          ],

          const SizedBox(height: 14),

          Row(
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontSize: 11,
                  color: Color(0xffA3A8B0),
                ),
              ),

              const SizedBox(width: 12),

              Text(
                tag,
                style: TextStyle(
                  fontSize: 11,
                  color: subjectTextColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}