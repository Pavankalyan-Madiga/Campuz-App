import 'package:flutter/material.dart';

class ProfileInfoCard extends StatelessWidget {
  const ProfileInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xffE5E7EB),
        ),
      ),
      child: Column(
        children: [
          _InfoRow(
            icon: Icons.badge_outlined,
            title: 'ID Number',
            value: 'S210980',
          ),

          const Divider(
            height: 24,
            color: Color(0xffEEEEF2),
          ),

          _InfoRow(
            icon: Icons.school_outlined,
            title: 'Department',
            value: 'Computer Science & Engineering',
          ),

          const Divider(
            height: 24,
            color: Color(0xffEEEEF2),
          ),

          _InfoRow(
            icon: Icons.calendar_today_outlined,
            title: 'Year',
            value: '4th Year',
          ),

          const Divider(
            height: 24,
            color: Color(0xffEEEEF2),
          ),

          _InfoRow(
            icon: Icons.menu_book_outlined,
            title: 'Semester',
            value: '5th Semester',
          ),

          const Divider(
            height: 24,
            color: Color(0xffEEEEF2),
          ),

          _InfoRow(
            icon: Icons.groups_outlined,
            title: 'Section',
            value: 'CSE - A',
          ),

          const Divider(
            height: 24,
            color: Color(0xffEEEEF2),
          ),

          _InfoRow(
            icon: Icons.email_outlined,
            title: 'College Email',
            value: 'student@rguktsklm.ac.in',
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const _InfoRow({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            color: const Color(0xffF1EEFF),
            borderRadius: BorderRadius.circular(11),
          ),
          child: Icon(
            icon,
            size: 20,
            color: const Color(0xff5638D5),
          ),
        ),

        const SizedBox(width: 12),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff8A8D95),
                ),
              ),

              const SizedBox(height: 3),

              Text(
                value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff292D36),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}