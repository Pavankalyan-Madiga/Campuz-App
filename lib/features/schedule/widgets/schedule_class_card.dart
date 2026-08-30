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
      height: 120,
      decoration: BoxDecoration(
        color: highlighted
            ? const Color(0xffF0EDFF)
            : Colors.white,
        borderRadius: BorderRadius.circular(26),
        border: Border.all(
          color: const Color(0xffE8E8EA),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 28),

          Container(
            width: 7,
            height: 70,
            decoration: BoxDecoration(
              color: lineColor,
              borderRadius:
                  BorderRadius.circular(10),
            ),
          ),

          const SizedBox(width: 24),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 22,
              ),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    subject,
                    maxLines: 2,
                    overflow:
                        TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight:
                          FontWeight.w700,
                      color:
                          Color(0xff30333A),
                    ),
                  ),

                  const SizedBox(height: 9),

                  Text(
                    details,
                    maxLines: 1,
                    overflow:
                        TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight:
                          FontWeight.w400,
                      color:
                          Color(0xff858992),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 10),

          Container(
            padding:
                const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: statusBackground,
              borderRadius:
                  BorderRadius.circular(24),
            ),
            child: Text(
              status,
              style: TextStyle(
                fontSize: 12,
                fontWeight:
                    FontWeight.w700,
                color: statusColor,
              ),
            ),
          ),

          const SizedBox(width: 24),
        ],
      ),
    );
  }
}