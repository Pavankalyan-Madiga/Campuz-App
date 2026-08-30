import 'package:flutter/material.dart';

import 'package:mycamps/features/clubs/screens/clubs_screen.dart';
import 'package:mycamps/features/leave/screens/leave_requests_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  static const Color primary = Color(0xff4A2ACF);
  static const Color background = Color(0xffF8F8FB);
  static const Color textDark = Color(0xff202124);
  static const Color textGrey = Color(0xff777982);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 280,
      backgroundColor: background,
      elevation: 0,
      child: SafeArea(
        child: Column(
          children: [
            // =========================================================
            // PROFILE HEADER
            // =========================================================

            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(
                20,
                28,
                20,
                26,
              ),
              color: primary,
              child: Column(
                children: [
                  Container(
                    width: 82,
                    height: 82,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),
                    ),
                    child: const Icon(
                      Icons.person_rounded,
                      size: 46,
                      color: primary,
                    ),
                  ),

                  const SizedBox(height: 14),

                  const Text(
                    'Pavankalyan Madiga',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    'ID : S210980',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 9),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.14),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Student',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // =========================================================
            // MENU
            // =========================================================

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(
                  14,
                  18,
                  14,
                  10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ===================================================
                    // ACADEMIC
                    // ===================================================

                    _sectionTitle('ACADEMIC'),

                    _menuItem(
                      context,
                      icon: Icons.bar_chart_rounded,
                      title: 'Attendance',
                    ),

                    _menuItem(
                      context,
                      icon: Icons.account_balance_wallet_outlined,
                      title: 'Fees',
                    ),

                    // ===================================================
                    // LEAVE REQUESTS
                    // ===================================================

                    _menuItem(
                      context,
                      icon: Icons.assignment_outlined,
                      title: 'Leave Requests',
                      badge: '2',
                      onTap: () {
                        Navigator.pop(context);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const LeaveRequestsScreen(),
                          ),
                        );
                      },
                    ),

                    const SizedBox(height: 20),

                    // ===================================================
                    // EXPLORE MORE
                    // ===================================================

                    _sectionTitle('EXPLORE MORE'),

                    // Placement
                    _menuItem(
                      context,
                      icon: Icons.work_outline_rounded,
                      title: 'Placement',
                      onTap: () {
                        Navigator.pop(context);

                        // Add PlacementScreen navigation here
                        //
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) =>
                        //         const PlacementScreen(),
                        //   ),
                        // );
                      },
                    ),

                    // Clubs
                    _menuItem(
                      context,
                      icon: Icons.groups_rounded,
                      title: 'Clubs',
                      onTap: () {
                        Navigator.pop(context);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ClubsScreen(),
                          ),
                        );
                      },
                    ),

                    const SizedBox(height: 20),

                    // ===================================================
                    // ACCOUNT
                    // ===================================================

                    _sectionTitle('ACCOUNT'),

                    _menuItem(
                      context,
                      icon: Icons.settings_outlined,
                      title: 'Settings',
                    ),

                    _menuItem(
                      context,
                      icon: Icons.help_outline_rounded,
                      title: 'Help & Support',
                    ),
                  ],
                ),
              ),
            ),

            // =========================================================
            // LOGOUT
            // =========================================================

            Padding(
              padding: const EdgeInsets.fromLTRB(
                14,
                8,
                14,
                15,
              ),
              child: Column(
                children: [
                  const Divider(
                    height: 1,
                    thickness: 1,
                    color: Color(0xffE5E5EA),
                  ),

                  const SizedBox(height: 10),

                  InkWell(
                    borderRadius: BorderRadius.circular(14),
                    onTap: () {
                      _showLogoutDialog(context);
                    },
                    child: Container(
                      height: 52,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xfffff1f1),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 38,
                            height: 38,
                            decoration: BoxDecoration(
                              color: const Color(0xffffdddd),
                              borderRadius:
                                  BorderRadius.circular(11),
                            ),
                            child: const Icon(
                              Icons.logout_rounded,
                              color: Color(0xffE53935),
                              size: 20,
                            ),
                          ),

                          const SizedBox(width: 12),

                          const Expanded(
                            child: Text(
                              'Logout',
                              style: TextStyle(
                                color: Color(0xffD32F2F),
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),

                          const Icon(
                            Icons.chevron_right_rounded,
                            color: Color(0xffE57373),
                            size: 22,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ===============================================================
  // SECTION TITLE
  // ===============================================================

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        bottom: 8,
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: textGrey,
          fontSize: 11,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.1,
        ),
      ),
    );
  }

  // ===============================================================
  // MENU ITEM
  // ===============================================================

  Widget _menuItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    String? badge,
    VoidCallback? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 4,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: onTap ??
              () {
                Navigator.pop(context);
              },
          child: SizedBox(
            height: 52,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                children: [
                  // Icon container
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: primary.withOpacity(0.08),
                      borderRadius:
                          BorderRadius.circular(12),
                    ),
                    child: Icon(
                      icon,
                      size: 21,
                      color: primary,
                    ),
                  ),

                  const SizedBox(width: 13),

                  // Title
                  Expanded(
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: textDark,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  // Badge
                  if (badge != null)
                    Container(
                      margin: const EdgeInsets.only(
                        right: 8,
                      ),
                      padding:
                          const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffffe9e9),
                        borderRadius:
                            BorderRadius.circular(20),
                      ),
                      child: Text(
                        badge,
                        style: const TextStyle(
                          color: Color(0xffE53935),
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                  const Icon(
                    Icons.chevron_right_rounded,
                    size: 21,
                    color: Color(0xffB5B6BC),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ===============================================================
  // LOGOUT DIALOG
  // ===============================================================

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
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
              fontSize: 15,
              color: Colors.black54,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primary,
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
              child: const Text('Logout'),
            ),
          ],
        );
      },
    );
  }
}