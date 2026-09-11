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
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0xffEEEEF2),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.025),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: avatarColor,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Text(
                  initials,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff555961),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      teacher,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff272A30),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 9,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: subjectColor,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Text(
                        subject,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.4,
                          color: subjectTextColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                time,
                style: const TextStyle(
                  fontSize: 11,
                  color: Color(0xff9CA0A8),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          Text(
            message,
            style: const TextStyle(
              fontSize: 13.5,
              height: 1.55,
              color: Color(0xff555A63),
            ),
          ),

          const SizedBox(height: 14),

          Row(
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 7,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffF5F5F7),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        showDownload
                            ? Icons.picture_as_pdf_rounded
                            : Icons.info_outline_rounded,
                        size: 14,
                        color: showDownload
                            ? const Color(0xffC14A4A)
                            : const Color(0xff777C84),
                      ),
                      const SizedBox(width: 6),
                      Flexible(
                        child: Text(
                          tag,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff6C7078),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (showDownload) ...[
                const SizedBox(width: 8),
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: const Color(0xffEEEAFE),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: const Icon(
                    Icons.download_rounded,
                    size: 17,
                    color: Color(0xff5638D5),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}