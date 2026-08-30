import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  Widget buildAction(
    IconData icon,
    String title,
  ) {
    return Expanded(
      child: Container(
        height: 92,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color(0xffEEEEF3),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                color: const Color(0xffF1F0FF),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Icon(
                icon,
                color: const Color(0xff4A2ACF),
                size: 23,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              title,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
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
        buildAction(
          Icons.calendar_month_outlined,
          'Timetable',
        ),
        const SizedBox(width: 10),
        buildAction(
          Icons.calendar_today_outlined,
          'Leave',
        ),
        const SizedBox(width: 10),
        buildAction(
          Icons.report_problem_outlined,
          'Complaint',
        ),
        const SizedBox(width: 10),
        buildAction(
          Icons.restaurant_outlined,
          'Mess',
        ),
      ],
    );
  }
}