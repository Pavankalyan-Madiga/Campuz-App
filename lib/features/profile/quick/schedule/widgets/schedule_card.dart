import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final String subject;
  final String details;
  final String status;
  final Color lineColor;
  final Color statusColor;
  final Color statusBackground;
  final bool highlighted;

  const ScheduleCard({
    super.key,
    required this.subject,
    required this.details,
    required this.status,
    required this.lineColor,
    required this.statusColor,
    required this.statusBackground,
    this.highlighted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        bottom: 14,
      ),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: highlighted
            ? const Color(0xffF1EFFF)
            : Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: highlighted
              ? const Color(0xffD8D2FF)
              : const Color(0xffEEEEF3),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 5,
            height: 58,
            decoration: BoxDecoration(
              color: lineColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subject,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: highlighted
                        ? const Color(0xff5146A8)
                        : const Color(0xff343840),
                  ),
                ),

                const SizedBox(height: 7),

                Text(
                  details,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xff8A8F99),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 10),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 11,
              vertical: 7,
            ),
            decoration: BoxDecoration(
              color: statusBackground,
              borderRadius: BorderRadius.circular(18),
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
}