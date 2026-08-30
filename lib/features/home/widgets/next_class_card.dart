import 'package:flutter/material.dart';

class NextClassCard extends StatelessWidget {
  const NextClassCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
        border: Border.all(
          color: const Color(0xffEEEEF3),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: const Color(0xffF1EDFF),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Icon(
              Icons.menu_book_outlined,
              color: Color(0xff4A2ACF),
              size: 28,
            ),
          ),

          const SizedBox(width: 15),

          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mathematics',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 7),

                Text(
                  '10:30 AM • Room A-101',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 11,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: const Color(0xffF1EDFF),
              borderRadius: BorderRadius.circular(9),
            ),
            child: const Text(
              'In 25m',
              style: TextStyle(
                color: Color(0xff4A2ACF),
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}