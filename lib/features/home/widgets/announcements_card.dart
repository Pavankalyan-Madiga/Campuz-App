import 'package:flutter/material.dart';

class AnnouncementsCard extends StatelessWidget {
  const AnnouncementsCard({super.key});

  Widget buildAnnouncement({
    required Color dotColor,
    required String title,
    required String subtitle,
  }) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
        border: Border.all(
          color: const Color(0xffEEEEF3),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 9,
            height: 9,
            decoration: BoxDecoration(
              color: dotColor,
              shape: BoxShape.circle,
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff343840),
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Color(0xffA1A6AE),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Icon(
                  Icons.campaign_outlined,
                  size: 21,
                  color: Color(0xffC65C76),
                ),

                SizedBox(width: 8),

                Text(
                  'Announcements',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const Text(
              'See All →',
              style: TextStyle(
                color: Color(0xff5C65A3),
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),

        buildAnnouncement(
          dotColor: const Color(0xffE34B52),
          title: 'Exam Schedule Released — Dec 15 onwards',
          subtitle: 'Admin • 2 hours ago',
        ),

        buildAnnouncement(
          dotColor: const Color(0xff6864D9),
          title: 'DS class shifted to Lab Block D tomorrow',
          subtitle: 'Prof. Sarah • 3 hours ago',
        ),

        buildAnnouncement(
          dotColor: const Color(0xffE5A72E),
          title: 'Special menu added for Diwali week',
          subtitle: 'Mess Committee • 5 hours ago',
        ),
      ],
    );
  }
}