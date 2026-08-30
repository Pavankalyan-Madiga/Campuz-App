import 'package:flutter/material.dart';

import 'leave_status_chip.dart';

class LeaveRequestCard extends StatelessWidget {
  final String leaveType;
  final String fromDate;
  final String toDate;
  final String duration;
  final String reason;
  final String status;
  final VoidCallback onTap;

  const LeaveRequestCard({
    super.key,
    required this.leaveType,
    required this.fromDate,
    required this.toDate,
    required this.duration,
    required this.reason,
    required this.status,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(17),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xffEEEEF3),
          ),
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    leaveType,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff202124),
                    ),
                  ),
                ),

                LeaveStatusChip(
                  status: status,
                ),
              ],
            ),

            const SizedBox(height: 13),

            Row(
              children: [
                const Icon(
                  Icons.calendar_today_outlined,
                  size: 16,
                  color: Color(0xff777982),
                ),

                const SizedBox(width: 8),

                Expanded(
                  child: Text(
                    '$fromDate – $toDate',
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xff55565D),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            Row(
              children: [
                const Icon(
                  Icons.timelapse_rounded,
                  size: 17,
                  color: Color(0xff777982),
                ),

                const SizedBox(width: 8),

                Text(
                  duration,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xff55565D),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Container(
              height: 1,
              color: const Color(0xffF0F0F3),
            ),

            const SizedBox(height: 11),

            Row(
              children: [
                Expanded(
                  child: Text(
                    reason,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xff777982),
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
          ],
        ),
      ),
    );
  }
}