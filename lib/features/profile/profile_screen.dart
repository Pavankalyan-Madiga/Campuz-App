import 'package:flutter/material.dart';
import 'package:mycamps/features/auth/screens/login_screen.dart';
import 'package:mycamps/features/profile/account/change_password_screen.dart';
import 'package:mycamps/features/profile/account/edit_profile_screen.dart';
import 'package:mycamps/features/profile/account/notifications_screen.dart';
import 'quick/schedule/schedule_screen.dart';

import 'package:mycamps/features/profile/widgets/profile_header.dart';
import 'package:mycamps/features/profile/widgets/profile_info_card.dart';
import 'package:mycamps/features/profile/widgets/profile_stats.dart';
import 'package:mycamps/features/profile/widgets/profile_action_tile.dart';
import 'package:mycamps/features/profile/widgets/profile_account_section.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String studentName = 'Pavankalyan Madiga';
  String email = 'student@rguktsklm.ac.in';
  String phone = '';
  String department = 'Computer Science & Engineering';
  String section = 'CSE-A';

  Future<void> _editProfile() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditProfileScreen(
          name: studentName,
          email: email,
          phone: phone,
          department: department,
          section: section,
        ),
      ),
    );

    if (result != null && result is Map<String, String>) {
      setState(() {
        studentName = result['name'] ?? studentName;
        email = result['email'] ?? email;
        phone = result['phone'] ?? phone;
        department = result['department'] ?? department;
        section = result['section'] ?? section;
      });
    }
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Text(
            'Logout',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          content: const Text(
            'Are you sure you want to logout?',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff666871),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(dialogContext);
              },
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Color(0xff666871),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(dialogContext);

                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                  (route) => false,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff5638D5),
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Logout',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

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
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(
                  20,
                  8,
                  20,
                  30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Container(
                            width: 92,
                            height: 92,
                            decoration: BoxDecoration(
                              color: const Color(0xff5638D5),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 4,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.08),
                                  blurRadius: 15,
                                  offset: const Offset(0, 6),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                _getInitials(studentName),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 14),

                          Text(
                            studentName,
                            style: const TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff17171C),
                            ),
                            textAlign: TextAlign.center,
                          ),

                          const SizedBox(height: 5),

                          const Text(
                            'Student • 2027 Batch',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff858892),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 30),

                    const Text(
                      'Academic Information',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff202124),
                      ),
                    ),

                    const SizedBox(height: 14),

                    ProfileInfoCard(
                      name: studentName,
                      email: email,
                      phone: phone,
                      department: department,
                      section: section,
                    ),

                    const SizedBox(height: 24),

                    const ProfileStats(),

                    const SizedBox(height: 28),

                    const Text(
                      'Quick Actions',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff202124),
                      ),
                    ),

                    const SizedBox(height: 14),

                    ProfileActionTile(
                      icon: Icons.calendar_month_outlined,
                      title: 'My Schedule',
                      subtitle: 'View your class timetable',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ScheduleScreen(),
                          ),
                        );
                      },
                    ),

                    const SizedBox(height: 12),

                    ProfileActionTile(
                      icon: Icons.fact_check_outlined,
                      title: 'Attendance',
                      subtitle: 'Check your attendance',
                      onTap: () {},
                    ),

                    const SizedBox(height: 12),

                    ProfileActionTile(
                      icon: Icons.assessment_outlined,
                      title: 'Results',
                      subtitle: 'View academic results',
                      onTap: () {},
                    ),

                    const SizedBox(height: 28),

                    const Text(
                      'Account',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff202124),
                      ),
                    ),

                    const SizedBox(height: 14),

                    ProfileAccountSection(
                      onEdit: _editProfile,
                      onNotifications: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const NotificationsScreen(),
                          ),
                        );
                      },
                      onChangePassword: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ChangePasswordScreen(),
                          ),
                        );
                      },
                    ),

                    const SizedBox(height: 24),

                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: OutlinedButton.icon(
                        onPressed: () {
                          _showLogoutDialog(context);
                        },
                        icon: const Icon(
                          Icons.logout_rounded,
                          size: 20,
                        ),
                        label: const Text(
                          'Logout',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xffDC2626),
                          side: const BorderSide(
                            color: Color(0xffF1B8B8),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
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

  String _getInitials(String name) {
    final parts = name.trim().split(' ');

    if (parts.isEmpty) {
      return 'P';
    }

    if (parts.length == 1) {
      return parts[0][0].toUpperCase();
    }

    return '${parts.first[0]}${parts.last[0]}'.toUpperCase();
  }
}