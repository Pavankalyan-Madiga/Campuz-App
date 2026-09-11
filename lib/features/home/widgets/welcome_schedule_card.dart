import 'package:flutter/material.dart';


import '../../profile/quick/schedule/schedule_screen.dart';


class WelcomeScheduleCard extends StatelessWidget {
  const WelcomeScheduleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xffEEEEF3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ==============================
          // TODAY
          // ==============================

          const Text(
            'Today',
            style: TextStyle(
              fontSize: 13,
              letterSpacing: 1,
              fontWeight: FontWeight.w700,
              color: Color(0xff777982),
            ),
          ),

          const SizedBox(height: 7),

          // ==============================
          // GREETING
          // ==============================

          const Text(
            'Hi Pavankalyan Madiga',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xff202124),
            ),
          ),

          const SizedBox(height: 5),

          // ==============================
          // SUBTITLE
          // ==============================

          const Text(
            'Here’s what’s happening on your campus today.',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Color(0xff777982),
              height: 1.4,
            ),
          ),

          const SizedBox(height: 17),

          // ==============================
          // VIEW SCHEDULE BUTTON
          // ==============================

          SizedBox(
            height: 44,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const ScheduleScreen(),
                  ),
                );
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                side: const BorderSide(
                  color: Color(0xffE5E5EA),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.calendar_month_outlined,
                    size: 18,
                    color: Color(0xff4A2ACF),
                  ),

                  SizedBox(width: 8),

                  Text(
                    'View Schedule',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff4A2ACF),
                    ),
                  ),

                  SizedBox(width: 6),

                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 12,
                    color: Color(0xff4A2ACF),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}