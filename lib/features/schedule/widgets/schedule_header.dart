import 'package:flutter/material.dart';

class ScheduleHeader extends StatelessWidget {
  const ScheduleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xff3F3A82),
      padding: const EdgeInsets.fromLTRB(
        25,
        60,
        36,
        12,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_rounded,
              size: 25,
              color: Colors.white,
            ),
          ),

          const SizedBox(width: 10),

          const Text(
            'Schedule',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),

          const Spacer(),
          const Spacer(),


          const Icon(
            Icons.calendar_month_rounded,
            size: 25,
            color: Colors.white,
          ),

          const SizedBox(width: 9),

          const Text(
            'Sep 2026',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}