import 'package:flutter/material.dart';

import 'package:mycamps/features/home/widgets/announcements_card.dart';
import 'package:mycamps/features/home/widgets/attendance_card.dart';
import 'package:mycamps/features/home/widgets/happening_card.dart';
import 'package:mycamps/features/home/widgets/home_header.dart';
import 'package:mycamps/features/home/widgets/needs_attention_card.dart';
import 'package:mycamps/features/home/widgets/next_class_card.dart';
import 'package:mycamps/features/home/widgets/welcome_schedule_card.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFC),

      // ========================================================
      // HOME HEADER
      // ========================================================

      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(72),
        child: HomeHeader(),
      ),

      // ========================================================
      // HOME CONTENT
      // ========================================================

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(
          22,
          20,
          22,
          30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ==================================================
            // WELCOME
            // ==================================================

            const WelcomeScheduleCard(),

            const SizedBox(height: 26),

            // ==================================================
            // ATTENDANCE
            // ==================================================

            const AttendanceCard(),

            const SizedBox(height: 30),

            // ==================================================
            // WHAT'S HAPPENING
            // ==================================================

            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              crossAxisAlignment:
                  CrossAxisAlignment.center,
              children: [
                const Text(
                  "What's Happening",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff202124),
                  ),
                ),

                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'See All →',
                    style: TextStyle(
                      color: Color(0xff4A2ACF),
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // ==================================================
            // HAPPENING CARDS
            // ==================================================

            SizedBox(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics:
                    const BouncingScrollPhysics(),
                children: const [
                  HappeningCard(
                    time: 'TODAY 3 PM',
                    title: 'Tech Talk: AI in 2025',
                    subtitle: 'Open Air Theatre',
                    color: Color(0xff5134D8),
                  ),

                  SizedBox(width: 16),

                  HappeningCard(
                    time: 'TOMORROW',
                    title: 'Cultural Night',
                    subtitle: 'Open Air Theatre',
                    color: Color(0xffEF4444),
                  ),

                  SizedBox(width: 16),

                  HappeningCard(
                    time: 'FRIDAY 10 AM',
                    title: 'Placement Drive',
                    subtitle: 'Seminar Hall',
                    color: Color(0xff0EA5E9),
                  ),

                  SizedBox(width: 16),

                  HappeningCard(
                    time: 'FRIDAY 4 PM',
                    title: 'Inter-College Cricket',
                    subtitle: 'College Ground',
                    color: Color(0xff16A34A),
                  ),

                  SizedBox(width: 16),

                  HappeningCard(
                    time: 'SATURDAY 11 AM',
                    title: 'Coding Contest',
                    subtitle: 'Computer Lab',
                    color: Color(0xffF59E0B),
                  ),

                  SizedBox(width: 16),

                  HappeningCard(
                    time: 'SATURDAY 6 PM',
                    title: 'Music Festival',
                    subtitle: 'Main Auditorium',
                    color: Color(0xffDB2777),
                  ),

                  SizedBox(width: 16),

                  HappeningCard(
                    time: 'SUNDAY 9 AM',
                    title: 'Campus Marathon',
                    subtitle: 'College Entrance',
                    color: Color(0xff7C3AED),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // ==================================================
            // NEXT CLASS
            // ==================================================

            const Text(
              'Next Class',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w700,
                color: Color(0xff202124),
              ),
            ),

            const SizedBox(height: 16),

            const NextClassCard(),

            const SizedBox(height: 30),

            // ==================================================
            // NEEDS ATTENTION
            // ==================================================

            const NeedsAttentionCard(),

            const SizedBox(height: 30),

            // ==================================================
            // ANNOUNCEMENTS
            // ==================================================

            const AnnouncementsCard(),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}