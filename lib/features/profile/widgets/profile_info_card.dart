import 'package:flutter/material.dart';

class ProfileInfoCard extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
  final String department;
  final String section;

  const ProfileInfoCard({
    super.key,
    required this.name,
    required this.email,
    required this.phone,
    required this.department,
    required this.section,
  });

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
            icon: Icons.person_outline_rounded,
            title: 'Name',
            value: name,
          ),
          const SizedBox(height: 18),
          _InfoRow(
            icon: Icons.email_outlined,
            title: 'Email',
            value: email,
          ),
          const SizedBox(height: 18),
          _InfoRow(
            icon: Icons.phone_outlined,
            title: 'Phone',
            value: phone.isEmpty ? 'Not added' : phone,
          ),
          const SizedBox(height: 18),
          _InfoRow(
            icon: Icons.school_outlined,
            title: 'Department',
            value: department,
          ),
          const SizedBox(height: 18),
          _InfoRow(
            icon: Icons.groups_outlined,
            title: 'Section',
            value: section,
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
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: const Color(0xffF4F4F7),
            borderRadius: BorderRadius.circular(12),
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
                  fontSize: 11,
                  color: Color(0xff8A8D96),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 13.5,
                  color: Color(0xff292D36),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}