import 'package:flutter/material.dart';

class LeaveBalanceCard extends StatelessWidget {
  const LeaveBalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
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
          const Text(
            'Leave Balance',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xff777982),
            ),
          ),

          const SizedBox(height: 8),

          Row(
            crossAxisAlignment:
                CrossAxisAlignment.end,
            children: [
              const Text(
                '12',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff202124),
                ),
              ),

              const SizedBox(width: 8),

              const Padding(
                padding: EdgeInsets.only(
                  bottom: 5,
                ),
                child: Text(
                  'Days Left',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff777982),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 4),

          const Text(
            'of 20 total days',
            style: TextStyle(
              fontSize: 12,
              color: Color(0xff999AA1),
            ),
          ),

          const SizedBox(height: 16),

          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: const LinearProgressIndicator(
              value: 0.60,
              minHeight: 8,
              backgroundColor: Color(0xffEEEEF3),
              valueColor:
                  AlwaysStoppedAnimation<Color>(
                Color(0xff4A2ACF),
              ),
            ),
          ),
        ],
      ),
    );
  }
}