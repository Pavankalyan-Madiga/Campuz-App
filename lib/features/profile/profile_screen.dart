import 'package:flutter/material.dart';

import 'widgets/profile_header.dart';
import 'widgets/profile_info_card.dart';
import 'widgets/profile_stats.dart';
import 'widgets/profile_action_tile.dart';
import 'widgets/profile_account_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F8FA),
      body: SafeArea(
        child: Column(
          children: [
            const ProfileHeader(),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Profile
                    Center(
                      child: Column(
                        children: [
                          Container(
                            width: 92,
                            height: 92,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0xffEDE9FE),
                              border: Border.all(
                                color: const Color(0xffD8D0FA),
                                width: 2,
                              ),
                            ),
                            child: const Icon(
                              Icons.person_rounded,
                              size: 52,
                              color: Color(0xff5638D5),
                            ),
                          ),

                          const SizedBox(height: 12),

                          const Text(
                            'Pavankalyan Madiga',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff17171C),
                            ),
                          ),

                          const SizedBox(height: 5),

                          const Text(
                            'Student • CSE',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff777B85),
                            ),
                          ),

                          const SizedBox(height: 4),

                          const Text(
                            '2027 Batch',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff999CA4),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 25),

                    const Text(
                      'Academic Information',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff17171C),
                      ),
                    ),

                    const SizedBox(height: 12),

                    const ProfileInfoCard(),

                    const SizedBox(height: 22),

                    const ProfileStats(),

                    const SizedBox(height: 25),

                    const Text(
                      'Quick Actions',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff17171C),
                      ),
                    ),

                    const SizedBox(height: 12),

                    ProfileActionTile(
                      icon: Icons.calendar_month_rounded,
                      title: 'My Schedule',
                      subtitle: 'View your class schedule',
                      onTap: () {
                        // Navigate to ScheduleScreen
                      },
                    ),

                    const SizedBox(height: 10),

                    ProfileActionTile(
                      icon: Icons.menu_book_rounded,
                      title: 'Attendance',
                      subtitle: 'Check your attendance',
                      onTap: () {
                        // Navigate to AttendanceScreen
                      },
                    ),

                    const SizedBox(height: 10),

                    ProfileActionTile(
                      icon: Icons.bar_chart_rounded,
                      title: 'Results',
                      subtitle: 'View your academic results',
                      onTap: () {
                        // Navigate to ResultsScreen
                      },
                    ),

                    const SizedBox(height: 10),

                    ProfileActionTile(
                      icon: Icons.campaign_rounded,
                      title: 'Campus Feed',
                      subtitle: 'See campus updates',
                      onTap: () {
                        // Navigate to CampusFeedScreen
                      },
                    ),

                    const SizedBox(height: 25),

                    const Text(
                      'Account',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff17171C),
                      ),
                    ),

                    const SizedBox(height: 12),

                    const ProfileAccountSection(),

                    const SizedBox(height: 25),

                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: OutlinedButton.icon(
                        onPressed: () {
                          // Logout
                        },
                        icon: const Icon(
                          Icons.logout_rounded,
                          color: Color(0xffD64545),
                          size: 21,
                        ),
                        label: const Text(
                          'Logout',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffD64545),
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: const BorderSide(
                            color: Color(0xffF0CACA),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}