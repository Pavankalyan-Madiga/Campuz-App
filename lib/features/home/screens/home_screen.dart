import 'package:flutter/material.dart';
import 'package:mycamps/features/campus_feed/screens/campus_feed_screen.dart';
import 'package:mycamps/features/classroom/classroom_screen.dart';
import 'package:mycamps/features/home/widgets/home_header.dart';
import 'package:mycamps/shared/widgets/app_drawer.dart';

import 'home_content.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();

  int selectedIndex = 0;

  final List<Widget> pages = const [
    HomeContent(),
    CampusFeedScreen(),
    ClassroomScreen(),
  ];

  String get screenTitle {
    switch (selectedIndex) {
      case 0:
        return 'Home';
      case 1:
        return 'Campus Feed';
      case 2:
        return 'Classroom';
      default:
        return 'Home';
    }
  }

  void _changePage(int index) {
    setState(() {
      selectedIndex = index;
    });

    _scaffoldKey.currentState?.closeDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xffFAFAFC),

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(76),
        child: HomeHeader(
          title: screenTitle,
        ),
      ),

      drawer: AppDrawer(
        selectedIndex: selectedIndex,
        onItemSelected: _changePage,
      ),

      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),

      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _buildBottomNavigation() {
    return Container(
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
              _buildNavItem(
                icon: Icons.home_rounded,
                label: 'Home',
                index: 0,
              ),
              _buildNavItem(
                icon: Icons.dynamic_feed_rounded,
                label: 'Campus Feed',
                index: 1,
              ),
              _buildNavItem(
                icon: Icons.menu_book_rounded,
                label: 'Classroom',
                index: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }

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