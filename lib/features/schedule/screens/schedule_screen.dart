import 'package:flutter/material.dart';
import 'package:mycamps/features/schedule/widgets/schedule_class_card.dart';
import 'package:mycamps/features/schedule/widgets/schedule_header.dart';
import 'package:mycamps/features/schedule/widgets/schedule_date_selector.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int selectedDay = 2;

  final List<Map<String, String>> days = [
    {
      'day': 'Tue',
      'date': '01',
    },
    {
      'day': 'Wed',
      'date': '02',
    },
    {
      'day': 'Thu',
      'date': '03',
    },
    {
      'day': 'Fri',
      'date': '04',
    },
    {
      'day': 'Sat',
      'date': '05',
    },
  ];

  final Map<int, List<Map<String, dynamic>>> schedules = {
    0: [
      {
        'subject': 'Mathematics',
        'details': '8:00 AM - 9:00 AM',
        'status': 'Class',
        'lineColor': const Color(0xff28A9D1),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xff28A9D1),
      },
      {
        'subject': 'English',
        'details': '9:00 AM - 10:00 AM',
        'status': 'Class',
        'lineColor': const Color(0xff28A9D1),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xff28A9D1),
      },
      {
        'subject': 'Data Structures',
        'details': '10:30 AM - 12:00 PM',
        'status': 'Class',
        'lineColor': const Color(0xff6C55D9),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xff6C55D9),
        'highlighted': true,
      },
      {
        'subject': 'Physics Lab',
        'details': '1:00 PM - 3:00 PM',
        'status': 'Others',
        'lineColor': const Color(0xffFFC21C),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xffFFC21C),
      },
    ],

    1: [
      {
        'subject': 'Mathematics',
        'details': '8:00 AM - 9:00 AM',
        'status': 'Class',
        'lineColor': const Color(0xff28A9D1),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xff28A9D1),
      },
      {
        'subject': 'English',
        'details': '9:00 AM - 10:00 AM',
        'status': 'Class',
        'lineColor': const Color(0xff28A9D1),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xff28A9D1),
      },
      {
        'subject': 'Data Structures',
        'details': '10:30 AM - 12:00 PM',
        'status': 'Class',
        'lineColor': const Color(0xff6C55D9),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xff6C55D9),
        'highlighted': true,
      },
      {
        'subject': 'Physics Lab',
        'details': '1:00 PM - 3:00 PM',
        'status': 'Others',
        'lineColor': const Color(0xffFFC21C),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xffFFC21C),
      },
      {
        'subject': 'OS Tutorial',
        'details': '3:30 PM - 4:30 PM',
        'status': 'Class',
        'lineColor': const Color(0xff28A9D1),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xff28A9D1),
      },
    ],

    2: [
      {
        'subject': 'Computer Networks',
        'details': '9:15 AM - 10:05 AM',
        'status': 'Class',
        'lineColor': const Color(0xff28A9D1),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xff28A9D1),
      },
      {
        'subject': 'Automata Theory and Compiler Design',
        'details': '10:05 AM - 10:55 AM',
        'status': 'Class',
        'lineColor': const Color(0xff28A9D1),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xff28A9D1),
      },
      {
        'subject': 'Data Mining Lab',
        'details': '10:55 AM - 12:35 PM',
        'status': 'Others',
        'lineColor': const Color(0xffFFC21C),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xffFFC21C),
      },
      {
        'subject': 'Automata Theory and Compiler Design',
        'details': '2:20 PM - 3:10 PM',
        'status': 'Class',
        'lineColor': const Color(0xff28A9D1),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xff28A9D1),
      },
      {
        'subject': 'Computer Networks',
        'details': '3:10 PM - 4:00 PM',
        'status': 'Class',
        'lineColor': const Color(0xff28A9D1),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xff28A9D1),
      },
    ],

    3: [
      {
        'subject': 'Operating Systems',
        'details': '8:00 AM - 9:00 AM',
        'status': 'Class',
        'lineColor': const Color(0xff28A9D1),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xff28A9D1),
      },
      {
        'subject': 'Data Structures',
        'details': '9:00 AM - 10:00 AM',
        'status': 'Class',
        'lineColor': const Color(0xff28A9D1),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xff28A9D1),
      },
      {
        'subject': 'Computer Networks Lab',
        'details': '10:30 AM - 12:30 PM',
        'status': 'Others',
        'lineColor': const Color(0xffFFC21C),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xffFFC21C),
      },
      {
        'subject': 'Mathematics',
        'details': '2:00 PM - 3:00 PM',
        'status': 'Class',
        'lineColor': const Color(0xff28A9D1),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xff28A9D1),
      },
    ],

    4: [
      {
        'subject': 'English',
        'details': '9:00 AM - 10:00 AM',
        'status': 'Class',
        'lineColor': const Color(0xff28A9D1),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xff28A9D1),
      },
      {
        'subject': 'Data Structures',
        'details': '10:00 AM - 11:00 AM',
        'status': 'Class',
        'lineColor': const Color(0xff28A9D1),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xff28A9D1),
      },
      {
        'subject': 'Project Work',
        'details': '11:30 AM - 1:00 PM',
        'status': 'Others',
        'lineColor': const Color(0xffFFC21C),
        'statusColor': Colors.white,
        'statusBackground': const Color(0xffFFC21C),
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final currentSchedule = schedules[selectedDay] ?? [];

    return Scaffold(
      backgroundColor: const Color(0xffF7F8FA),
      body: Column(
        children: [

          const ScheduleHeader(),

          ScheduleDateSelector(
            selectedIndex: selectedDay,
            days: days,
            onDateSelected: (index) {
              setState(() {
                selectedDay = index;
              });
            },
          ),

          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.fromLTRB(
                22,
                20,
                22,
                30,
              ),
              itemCount: currentSchedule.length,
              separatorBuilder: (context, index) {
                return const SizedBox(height: 16);
              },
              itemBuilder: (context, index) {
                final item = currentSchedule[index];

                return ScheduleCard(
                  subject: item['subject'],
                  details: item['details'],
                  status: item['status'],
                  lineColor: item['lineColor'],
                  statusColor: item['statusColor'],
                  statusBackground: item['statusBackground'],
                  highlighted: item['highlighted'] ?? false,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}