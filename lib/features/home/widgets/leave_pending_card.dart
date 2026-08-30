import 'package:flutter/material.dart';

class LeavePendingCard extends StatelessWidget {
  const LeavePendingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 17,
      ),
      decoration: BoxDecoration(
        color: const Color(0xfffffbeb),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color(0xffffedb5),
        ),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.access_time,
            size: 22,
            color: Color(0xffC99A20),
          ),

          const SizedBox(width: 12),

          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Leave Pending Approval',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff9A7420),
                  ),
                ),

                SizedBox(height: 5),

                Text(
                  'Nov 22 • Medical Leave • Sent to HOD',
                  style: TextStyle(
                    fontSize: 11,
                    color: Color(0xffB39755),
                  ),
                ),
              ],
            ),
          ),

          const Icon(
            Icons.chevron_right,
            size: 24,
            color: Color(0xffC99A20),
          ),
        ],
      ),
    );
  }
}