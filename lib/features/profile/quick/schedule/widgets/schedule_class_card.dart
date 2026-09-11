import 'package:flutter/material.dart';

class ScheduleClassCard extends StatelessWidget {
  final String time;
  final String subject;
  final String faculty;
  final bool isCurrent;

  const ScheduleClassCard({
    super.key,
    required this.time,
    required this.subject,
    required this.faculty,
    this.isCurrent = false,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: isCurrent
            ? const Color(0xffF0ECFF)
            : Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: isCurrent
              ? const Color(0xff4A2ACF)
              : const Color(0xffEAEAF0),
          width: isCurrent ? 1.5 : 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.025),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Container(
              width: 5,
              decoration: BoxDecoration(
                color: isCurrent
                    ? const Color(0xff4A2ACF)
                    : const Color(0xff8B78E6),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            subject,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: isCurrent
                                  ? const Color(0xff3D25A8)
                                  : const Color(0xff202124),
                            ),
                          ),
                        ),
                        if (isCurrent)
                          Container(
                            margin: const EdgeInsets.only(
                              left: 8,
                            ),
                            padding:
                                const EdgeInsets.symmetric(
                              horizontal: 9,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  const Color(0xff4A2ACF),
                              borderRadius:
                                  BorderRadius.circular(8),
                            ),
                            child: const Text(
                              'NOW',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight:
                                    FontWeight.w800,
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    _InfoRow(
                      icon: Icons.access_time_rounded,
                      text: time,
                      highlighted: isCurrent,
                    ),
                    const SizedBox(height: 9),
                    _InfoRow(
                      icon: Icons.person_outline_rounded,
                      text: faculty,
                      highlighted: isCurrent,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool highlighted;

  const _InfoRow({
    required this.icon,
    required this.text,
    required this.highlighted,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16,
          color: highlighted
              ? const Color(0xff5B46C7)
              : const Color(0xff777777),
        ),
        const SizedBox(width: 7),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 13,
              color: highlighted
                  ? const Color(0xff5544A0)
                  : const Color(0xff555555),
              fontWeight: highlighted
                  ? FontWeight.w500
                  : FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}