import 'package:flutter/material.dart';
import 'package:mycamps/features/classroom/schedule/widgets/next_class_banner.dart';
import 'package:mycamps/features/classroom/schedule/widgets/schedule_card.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(
        22,
        0,
        22,
        30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const NextClassBanner(),

          const SizedBox(height: 30),

          const Text(
            "Today's Schedule",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Color(0xff17171C),
            ),
          ),

          const SizedBox(height: 16),

          ScheduleCard(
            subject: 'Mathematics',
            details: '8:00 - 9:00 • Room A-101 • Prof. Kumar',
            status: 'DONE',
            lineColor: const Color(0xff63D5B1),
            statusColor: const Color(0xff66C9AA),
            statusBackground: const Color(0xffE8FAF3),
          ),

          ScheduleCard(
            subject: 'English',
            details: '9:00 - 10:00 • Room C-305 • Prof. Meera',
            status: 'DONE',
            lineColor: const Color(0xff63D5B1),
            statusColor: const Color(0xff66C9AA),
            statusBackground: const Color(0xffE8FAF3),
          ),

          ScheduleCard(
            subject: 'Data Structures',
            details:
                '10:30 - 12:00 • Room B-204 • Prof. Sarah Miller',
            status: 'ONGOING',
            lineColor: const Color(0xff6556E8),
            statusColor: const Color(0xff584AC7),
            statusBackground: const Color(0xffE9E8FF),
            highlighted: true,
          ),

          ScheduleCard(
            subject: 'Physics Lab',
            details: '1:00 - 3:00 • Lab D • Prof. Rao',
            status: '1:00 PM',
            lineColor: const Color(0xffD8DDE5),
            statusColor: const Color(0xff7F8792),
            statusBackground: const Color(0xffF1F3F6),
          ),

          ScheduleCard(
            subject: 'OS Tutorial',
            details: '3:30 - 4:30 • Room A-203 • Prof. Gupta',
            status: '3:30 PM',
            lineColor: const Color(0xffD8DDE5),
            statusColor: const Color(0xff7F8792),
            statusBackground: const Color(0xffF1F3F6),
          ),
        ],
      ),
    );
  }
}