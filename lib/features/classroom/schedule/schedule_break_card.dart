import 'package:flutter/material.dart';

class ScheduleBreakCard extends StatelessWidget {
  final String time;
  final String title;
  final bool isLunch;

  const ScheduleBreakCard({
    super.key,
    required this.time,
    required this.title,
    this.isLunch = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 13),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 13,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffF0F0F4),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Icon(
            isLunch
                ? Icons.restaurant_outlined
                : Icons.free_breakfast_outlined,
            size: 19,
            color: const Color(0xff777780),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: Color(0xff66666E),
              ),
            ),
          ),
          Text(
            time,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: Color(0xff888890),
            ),
          ),
        ],
      ),
    );
  }
}