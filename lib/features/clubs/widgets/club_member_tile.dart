import 'package:flutter/material.dart';

class ClubMemberTile extends StatelessWidget {
  final String name;
  final String role;

  const ClubMemberTile({
    super.key,
    required this.name,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 12,
      ),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xffEEEEF2),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: const Color(0xffF1EEFF),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Center(
              child: Text(
                'C',
                style: TextStyle(
                  color: Color(0xff4A2ACF),
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  role,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xff777780),
                  ),
                ),
              ],
            ),
          ),

          const Text(
            'Admin',
            style: TextStyle(
              color: Color(0xff2A9CC0),
              fontSize: 13,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}