import 'package:flutter/material.dart';
import 'package:mycamps/features/classroom/announcements/announcements_screen.dart';
import 'package:mycamps/features/classroom/schedule/schedule_class_card.dart';
import 'package:mycamps/features/classroom/schedule/schedule_break_card.dart';

class ClassroomScreen extends StatefulWidget {
  const ClassroomScreen({super.key});

  @override
  State<ClassroomScreen> createState() => _ClassroomScreenState();
}

class _ClassroomScreenState extends State<ClassroomScreen> {
  int selectedTab = 0;

  final String section = 'CSE-A';

  final List<Map<String, dynamic>> schedule = [
    {
      'time': '09:00 AM - 10:00 AM',
      'subject': 'Data Structures',
      'faculty': 'Dr. Rajesh Kumar',
      'break': false,
    },
    {
      'time': '10:00 AM - 11:00 AM',
      'subject': 'Database Management Systems',
      'faculty': 'Prof. Suresh',
      'break': false,
    },
    {
      'time': '11:00 AM - 11:15 AM',
      'subject': 'Break',
      'faculty': '',
      'break': true,
    },
    {
      'time': '11:15 AM - 12:15 PM',
      'subject': 'Operating Systems',
      'faculty': 'Dr. Priya Sharma',
      'break': false,
    },
    {
      'time': '12:15 PM - 01:15 PM',
      'subject': 'Computer Networks',
      'faculty': 'Prof. Anil Kumar',
      'break': false,
    },
    {
      'time': '01:15 PM - 02:00 PM',
      'subject': 'Lunch Break',
      'faculty': '',
      'break': true,
    },
    {
      'time': '02:00 PM - 03:00 PM',
      'subject': 'Software Engineering',
      'faculty': 'Dr. Kavitha',
      'break': false,
    },
    {
      'time': '03:00 PM - 04:00 PM',
      'subject': 'Web Technologies',
      'faculty': 'Prof. Naveen',
      'break': false,
    },
    {
      'time': '04:00 PM - 05:00 PM',
      'subject': 'Artificial Intelligence',
      'faculty': 'Dr. Ramesh',
      'break': false,
    },
    {
      'time': '05:00 PM - 06:00 PM',
      'subject': 'Programming Lab',
      'faculty': 'Prof. Kiran',
      'break': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeader(),
        _buildTabs(),
        Expanded(
          child: selectedTab == 0
              ? _buildSchedule()
              : const AnnouncementsScreen(),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(15, 0, 20, 15),
      // child: const SizedBox.shrink(),
    );
  }

  Widget _buildTabs() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(20, 4, 20, 18),
      child: Row(
        children: [
          Expanded(
            child: _tabButton(
              icon: Icons.calendar_month_rounded,
              title: 'Schedule',
              selected: selectedTab == 0,
              onTap: () {
                setState(() {
                  selectedTab = 0;
                });
              },
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: _tabButton(
              icon: Icons.campaign_rounded,
              title: 'Announcements',
              selected: selectedTab == 1,
              onTap: () {
                setState(() {
                  selectedTab = 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _tabButton({
    required IconData icon,
    required String title,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 58,
        decoration: BoxDecoration(
          color: selected
              ? const Color(0xffEEEAFE)
              : const Color(0xffF7F7F9),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: selected
                ? const Color(0xffD9D0FF)
                : const Color(0xffECECF0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 21,
              color: selected
                  ? const Color(0xff5638D5)
                  : const Color(0xff777C85),
            ),
            const SizedBox(width: 9),
            Flexible(
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: selected
                      ? const Color(0xff5638D5)
                      : const Color(0xff666B74),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSchedule() {
    return Container(
      color: const Color(0xffFAFAFC),
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
        children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  'TODAY',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff969BA4),
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffEEEAFE),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  section,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff5638D5),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ...schedule.map((item) {
            if (item['break'] == true) {
              return ScheduleBreakCard(
                time: item['time'],
                title: item['subject'],
              );
            }

            return ScheduleClassCard(
              time: item['time'],
              subject: item['subject'],
              faculty: item['faculty'],
            );
          }),
        ],
      ),
    );
  }
}