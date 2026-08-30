import 'package:flutter/material.dart';

class PlacementUpdateCard extends StatelessWidget {
  const PlacementUpdateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffffeeee),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color(0xffffd9d9),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 6),
            width: 9,
            height: 9,
            decoration: const BoxDecoration(
              color: Color(0xffD83C46),
              shape: BoxShape.circle,
            ),
          ),

          const SizedBox(width: 12),

          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TCS Placement Drive — Register by',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff9A3E43),
                  ),
                ),

                SizedBox(height: 3),

                Text(
                  'Today 5 PM',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff9A3E43),
                  ),
                ),

                SizedBox(height: 6),

                Text(
                  'Eligible: CS & IT, 6.5+ CGPA. 120 registered.',
                  style: TextStyle(
                    fontSize: 11,
                    color: Color(0xffA66B6B),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}