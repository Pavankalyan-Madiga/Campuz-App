import 'package:flutter/material.dart';

class NextClassBanner extends StatelessWidget {
  const NextClassBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xff5134D8),
            Color(0xff6B63E9),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Current Class',
            style: TextStyle(
              color: Color(0xffDDD9FF),
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),

          const SizedBox(height: 7),

          const Text(
            'Data Structures',
            style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 14),

          const Row(
            children: [
              Icon(
                Icons.access_time_rounded,
                size: 17,
                color: Color(0xffE1DEFF),
              ),

              SizedBox(width: 6),

              Text(
                '10:30 - 12:00',
                style: TextStyle(
                  color: Color(0xffE1DEFF),
                  fontSize: 12,
                ),
              ),

              SizedBox(width: 16),

              Icon(
                Icons.location_on_outlined,
                size: 17,
                color: Color(0xffE1DEFF),
              ),

              SizedBox(width: 5),

              Text(
                'VVL4',
                style: TextStyle(
                  color: Color(0xffE1DEFF),
                  fontSize: 12,
                ),
              ),
            ],
          ),

          const SizedBox(height: 9),

          const Row(
            children: [
              Icon(
                Icons.person_outline_rounded,
                size: 17,
                color: Color(0xffE1DEFF),
              ),

              SizedBox(width: 6),

              Text(
                'Prof. Sarah Miller',
                style: TextStyle(
                  color: Color(0xffE1DEFF),
                  fontSize: 12,
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.18),
              borderRadius: BorderRadius.circular(18),
            ),
            child: const Text(
              '1:30mins',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}