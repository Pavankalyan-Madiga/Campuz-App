import 'package:flutter/material.dart';

class ProfileStats extends StatelessWidget {
  const ProfileStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _StatCard(
            value: '87%',
            title: 'Attendance',
            backgroundColor: const Color(0xffEEF2FF),
          ),
        ),

        const SizedBox(width: 10),

        Expanded(
          child: _StatCard(
            value: '8',
            title: 'CGPA',
            backgroundColor: const Color(0xffEAF9F2),
          ),
        ),

        const SizedBox(width: 10),

        Expanded(
          child: _StatCard(
            value: '\$5000',
            title: 'Fees',
            backgroundColor: const Color(0xfffff1e8),
          ),
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  final String value;
  final String title;
  final Color backgroundColor;

  const _StatCard({
    required this.value,
    required this.title,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w700,
              color: Color(0xff17171C),
            ),
          ),

          const SizedBox(height: 6),

          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xff70737B),
            ),
          ),
        ],
      ),
    );
  }
}