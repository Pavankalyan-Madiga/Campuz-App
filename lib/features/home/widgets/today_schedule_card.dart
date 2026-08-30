import 'package:flutter/material.dart';

class TodayScheduleCard extends StatelessWidget {
  const TodayScheduleCard({super.key});

  Widget buildScheduleItem({
    required String subject,
    required String time,
    required String room,
    required String status,
    required Color lineColor,
    required Color statusBackground,
    required Color statusColor,
    bool isNext = false,
  }) {
    return Container(
      height: 82,
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 13,
      ),
      decoration: BoxDecoration(
        color: isNext
            ? const Color(0xffF5F4FF)
            : Colors.white,
      ),
      child: Row(
        children: [
          Container(
            width: 5,
            height: 46,
            decoration: BoxDecoration(
              color: lineColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  subject,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: isNext
                        ? FontWeight.bold
                        : FontWeight.w600,
                    color: isNext
                        ? const Color(0xff51449B)
                        : const Color(0xff555A63),
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  '$time • $room',
                  style: const TextStyle(
                    fontSize: 11,
                    color: Color(0xffA0A5AD),
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 7,
            ),
            decoration: BoxDecoration(
              color: statusBackground,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              status,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: statusColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Icon(
                  Icons.calendar_month_outlined,
                  size: 21,
                  color: Color(0xff6872A9),
                ),

                SizedBox(width: 8),

                Text(
                  "Today's Schedule",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const Text(
              'Full View →',
              style: TextStyle(
                color: Color(0xff5C65A3),
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),

        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(19),
            border: Border.all(
              color: const Color(0xffEEEEF3),
            ),
          ),
          child: Column(
            children: [
              buildScheduleItem(
                subject: 'Mathematics',
                time: '8:00 - 9:00',
                room: 'A-101',
                status: 'DONE',
                lineColor: const Color(0xff7EDCC4),
                statusBackground: const Color(0xffE7F9F2),
                statusColor: const Color(0xff72CBAF),
              ),

              buildScheduleItem(
                subject: 'English',
                time: '9:00 - 10:00',
                room: 'C-305',
                status: 'DONE',
                lineColor: const Color(0xff7EDCC4),
                statusBackground: const Color(0xffE7F9F2),
                statusColor: const Color(0xff72CBAF),
              ),

              buildScheduleItem(
                subject: 'Data Structures',
                time: '10:30 - 12:00',
                room: 'B-204',
                status: 'NEXT',
                lineColor: const Color(0xffA99AEF),
                statusBackground: const Color(0xffE8E8FF),
                statusColor: const Color(0xff6861B2),
                isNext: true,
              ),

              buildScheduleItem(
                subject: 'Physics Lab',
                time: '1:00 - 3:00',
                room: 'Lab D',
                status: '1:00 PM',
                lineColor: const Color(0xffDCE1E8),
                statusBackground: const Color(0xffF1F4F7),
                statusColor: const Color(0xff68707A),
              ),

              buildScheduleItem(
                subject: 'OS Tutorial',
                time: '3:30 - 4:30',
                room: 'A-203',
                status: '3:30 PM',
                lineColor: const Color(0xffDCE1E8),
                statusBackground: const Color(0xffF1F4F7),
                statusColor: const Color(0xff68707A),
              ),
            ],
          ),
        ),
      ],
    );
  }
}