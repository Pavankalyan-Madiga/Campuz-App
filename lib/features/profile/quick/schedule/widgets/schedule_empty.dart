import 'package:flutter/material.dart';

class ScheduleEmpty extends StatelessWidget {
  const ScheduleEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.event_busy_rounded,
            size: 48,
            color: Color(0xffB0B0B8),
          ),
          SizedBox(height: 12),
          Text(
            'No classes scheduled',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff555555),
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Enjoy your day!',
            style: TextStyle(
              fontSize: 13,
              color: Color(0xff888888),
            ),
          ),
        ],
      ),
    );
  }
}