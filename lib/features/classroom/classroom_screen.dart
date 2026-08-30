import 'package:flutter/material.dart';
import 'package:mycamps/features/classroom/schedule/schedule_screen.dart';
import 'package:mycamps/features/classroom/announcements/announcements_screen.dart';

class ClassroomScreen extends StatefulWidget {
  const ClassroomScreen({super.key});

  @override
  State<ClassroomScreen> createState() => _ClassroomScreenState();
}

class _ClassroomScreenState extends State<ClassroomScreen> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFC),
      body: SafeArea(
        child: Column(
        
          children: [
            _buildHeader(),

            const SizedBox(height: 4),

            _buildTabs(),

            const SizedBox(height: 20),

            Expanded(child: _buildSelectedPage()),
          ],
        ),
      ),
    );
  }

Widget _buildHeader() {
  return SizedBox(
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(
        22,
        20,
        22,
        16,
      ),
      child: const Center(
        child: Text(
          'Classroom',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xff202124),
          ),
        ),
      ),
    ),
  );
}

  Widget _buildTabs() {
    final List<String> tabs = ['Schedule', 'Announcements'];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 22),
      height: 54,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: const Color(0xffF0F1F6),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          for (int index = 0; index < tabs.length; index++)
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedTab = index;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: selectedTab == index
                        ? Colors.white
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Text(
                    tabs[index],
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: selectedTab == index
                          ? FontWeight.w700
                          : FontWeight.w500,
                      color: selectedTab == index
                          ? const Color(0xff292D36)
                          : const Color(0xff8A8F99),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildSelectedPage() {
    if (selectedTab == 0) {
      return const ScheduleScreen();
    }

    return const AnnouncementsScreen();
  }
}
