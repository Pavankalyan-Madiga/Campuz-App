import 'package:flutter/material.dart';

class LeaveStatusChip extends StatelessWidget {
  final String status;

  const LeaveStatusChip({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color textColor;
    IconData icon;

    switch (status.toLowerCase()) {
      case 'approved':
        backgroundColor = const Color(0xffEAF8EF);
        textColor = const Color(0xff16803C);
        icon = Icons.check_circle_outline_rounded;
        break;

      case 'rejected':
        backgroundColor = const Color(0xffffeeee);
        textColor = const Color(0xffD32F2F);
        icon = Icons.cancel_outlined;
        break;

      case 'cancelled':
        backgroundColor = const Color(0xffF0F0F3);
        textColor = const Color(0xff777982);
        icon = Icons.remove_circle_outline_rounded;
        break;

      default:
        backgroundColor = const Color(0xfffff4df);
        textColor = const Color(0xffB76A00);
        icon = Icons.schedule_rounded;
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 9,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 14,
            color: textColor,
          ),

          const SizedBox(width: 5),

          Text(
            status,
            style: TextStyle(
              color: textColor,
              fontSize: 11,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}