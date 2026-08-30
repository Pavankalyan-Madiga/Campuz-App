import 'package:flutter/material.dart';
import 'package:mycamps/features/campus_feed/screens/campus_feed_screen.dart';

import 'home_content.dart';
import 'package:mycamps/features/classroom/classroom_screen.dart';
import 'package:mycamps/shared/widgets/app_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  // ============================================================
  // PAGES
  // ============================================================

  final List<Widget> pages = const [
    HomeContent(),
    CampusFeedScreen(),
    ClassroomScreen(),
  ];

  // ============================================================
  // PAGE TITLES
  // ============================================================

  final List<String> titles = const [
    'Campuz',
    'Campus Feed',
    'Classroom',
  ];

  // ============================================================
  // CHANGE PAGE
  // ============================================================

  void _changePage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFC),

      // ========================================================
      // DRAWER
      // ========================================================

      drawer: const AppDrawer(),

      // ========================================================
      // BODY
      // ========================================================

      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),

      // ========================================================
      // BOTTOM NAVIGATION
      // ========================================================

      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Color(0xffEEEEF3),
              width: 1,
            ),
          ),
        ),
        child: SafeArea(
          top: false,
          child: SizedBox(
            height: 68,
            child: Row(
              children: [
                // HOME
                _buildNavItem(
                  icon: Icons.home_rounded,
                  label: 'Home',
                  index: 0,
                ),

                // CAMPUS FEED
                _buildNavItem(
                  icon: Icons.dynamic_feed_rounded,
                  label: 'Campus Feed',
                  index: 1,
                ),

                // CLASSROOM
                _buildNavItem(
                  icon: Icons.menu_book_rounded,
                  label: 'Classroom',
                  index: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ============================================================
  // NAVIGATION ITEM
  // ============================================================

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    final bool isSelected = selectedIndex == index;

    return Expanded(
      child: InkWell(
        onTap: () {
          _changePage(index);
        },
        splashColor:
            const Color(0xff4A2ACF).withOpacity(0.08),
        highlightColor:
            const Color(0xff4A2ACF).withOpacity(0.04),
        child: SizedBox(
          height: 68,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 24,
                color: isSelected
                    ? const Color(0xff4A2ACF)
                    : const Color(0xff8A8A96),
              ),

              const SizedBox(height: 4),

              Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: isSelected
                      ? FontWeight.w700
                      : FontWeight.w500,
                  color: isSelected
                      ? const Color(0xff4A2ACF)
                      : const Color(0xff8A8A96),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}