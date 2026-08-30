import 'package:flutter/material.dart';

class NeedsAttentionCard extends StatelessWidget {
  const NeedsAttentionCard({super.key});

  Widget buildAttentionItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color backgroundColor,
    required Color iconColor,
    required Color titleColor,
  }) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(17),
        border: Border.all(
          color: titleColor.withOpacity(0.08),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: iconColor.withOpacity(0.10),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(
              icon,
              size: 25,
              color: iconColor,
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: titleColor,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  subtitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    color: titleColor.withOpacity(0.55),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 8),

          Icon(
            Icons.chevron_right_rounded,
            size: 25,
            color: titleColor.withOpacity(0.45),
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
        const Row(
          children: [
            Icon(
              Icons.warning_amber_rounded,
              size: 21,
              color: Color(0xffC75B62),
            ),

            SizedBox(width: 8),

            Text(
              'Needs Your Attention',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),

        buildAttentionItem(
          icon: Icons.work_outline_rounded,
          title: 'TCS Drive — Register by 5 PM Today',
          subtitle: 'Eligible: CS & IT, 6.5+ CGPA • 120 registered',
          backgroundColor: const Color(0xfffff2f2),
          iconColor: const Color(0xffD85C63),
          titleColor: const Color(0xff963D44),
        ),

        buildAttentionItem(
          icon: Icons.event_busy_outlined,
          title: 'Leave Pending — Awaiting HOD Approval',
          subtitle: 'Medical Leave • Nov 22 • 1 Day',
          backgroundColor: const Color(0xfffffbed),
          iconColor: const Color(0xffD3A52B),
          titleColor: const Color(0xff966F20),
        ),

        buildAttentionItem(
          icon: Icons.assignment_outlined,
          title: '2 Assignments Overdue',
          subtitle: 'BST Implementation • Unit 3 Problem Set',
          backgroundColor: const Color(0xfffff5eb),
          iconColor: const Color(0xffD88738),
          titleColor: const Color(0xff995F29),
        ),
      ],
    );
  }
}