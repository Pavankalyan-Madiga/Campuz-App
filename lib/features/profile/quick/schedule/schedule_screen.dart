import 'package:flutter/material.dart';
import 'data/schedule_data.dart';
import 'widgets/schedule_break_card.dart';
import 'widgets/schedule_class_card.dart';
import 'widgets/schedule_day_selector.dart';
import 'widgets/schedule_empty.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int selectedDay = 0;

  final String section = 'CSE-A';

  final List<String> dayNames = [
    'MON',
    'TUE',
    'WED',
    'THU',
    'FRI',
    'SAT',
  ];

  List<DateTime> _getWeekDates() {
    final now = DateTime.now();

    final monday = now.subtract(
      Duration(days: now.weekday - DateTime.monday),
    );

    return List.generate(
      6,
      (index) => monday.add(
        Duration(days: index),
      ),
    );
  }

  int _parseTime(String value) {
    final parts = value.split(' ');

    final time = parts[0];
    final period = parts[1];

    final timeParts = time.split(':');

    int hour = int.parse(timeParts[0]);
    final minute = int.parse(timeParts[1]);

    if (period == 'PM' && hour != 12) {
      hour += 12;
    }

    if (period == 'AM' && hour == 12) {
      hour = 0;
    }

    return hour * 60 + minute;
  }

  bool _isCurrentClass(String time) {
    final parts = time.split(' - ');

    if (parts.length != 2) {
      return false;
    }

    final start = _parseTime(parts[0]);
    final end = _parseTime(parts[1]);

    final now = TimeOfDay.now();

    final currentMinutes = now.hour * 60 + now.minute;

    return currentMinutes >= start && currentMinutes < end;
  }

  @override
  Widget build(BuildContext context) {
    final weekDates = _getWeekDates();

    final currentSchedule =
        ScheduleData.schedules[selectedDay] ?? [];

    final todayIndex = DateTime.now().weekday - 1;

    return Scaffold(
      backgroundColor: const Color(0xffF7F8FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        toolbarHeight: 68,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 19,
            color: Color(0xff202124),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        titleSpacing: 0,
        title: const Text(
          'My Schedule',
          style: TextStyle(
            color: Color(0xff202124),
            fontSize: 19,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(
              right: 14,
              top: 12,
              bottom: 12,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 13,
              vertical: 9,
            ),
            decoration: BoxDecoration(
              color: const Color(0xffEEEAFE),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xffDCD4FF),
                width: 1,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.groups_rounded,
                  size: 17,
                  color: Color(0xff4A2ACF),
                ),
                const SizedBox(width: 6),
                Text(
                  section,
                  style: const TextStyle(
                    color: Color(0xff4A2ACF),
                    fontSize: 13,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          ScheduleDaySelector(
            days: dayNames,
            dates: weekDates,
            selectedDay: selectedDay,
            onDaySelected: (index) {
              setState(() {
                selectedDay = index;
              });
            },
          ),
          Expanded(
            child: currentSchedule.isEmpty
                ? const ScheduleEmpty()
                : Scrollbar(
                    thumbVisibility: true,
                    child: ListView.builder(
                      padding: const EdgeInsets.fromLTRB(
                        16,
                        18,
                        16,
                        40,
                      ),
                      physics:
                          const AlwaysScrollableScrollPhysics(),
                      itemCount: currentSchedule.length,
                      itemBuilder: (context, index) {
                        final item = currentSchedule[index];

                        if (item.isBreak) {
                          return ScheduleBreakCard(
                            time: item.time,
                            title: item.subject,
                          );
                        }

                        return ScheduleClassCard(
                          time: item.time,
                          subject: item.subject,
                          faculty: item.faculty,
                          isCurrent: selectedDay == todayIndex &&
                              _isCurrentClass(item.time),
                        );
                      },
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}