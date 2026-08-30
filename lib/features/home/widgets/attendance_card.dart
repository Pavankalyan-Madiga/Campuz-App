import 'package:flutter/material.dart';

class AttendanceCard extends StatelessWidget {
  const AttendanceCard({super.key});

  Widget buildStat(
    String value,
    String title,
    Color backgroundColor,
  ) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Text(
              value,
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildStat(
          '87%',
          'Attendance',
          const Color(0xffEEF2FF),
        ),
        const SizedBox(width: 12),
        buildStat(
          '8',
          'CGPA',
          const Color(0xffE9F8F0),
        ),
        const SizedBox(width: 12),
        buildStat(
          '\$5000',
          'Fees',
          const Color(0xfffff0e8),
        ),
      ],
    );
  }
}