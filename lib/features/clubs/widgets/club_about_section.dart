import 'package:flutter/material.dart';
import '../models/club_model.dart';

class ClubAboutSection extends StatelessWidget {
  final ClubModel club;

  const ClubAboutSection({
    super.key,
    required this.club,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'About this Club',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xff17171C),
            ),
          ),

          const SizedBox(height: 10),

          Text(
            club.description,
            style: const TextStyle(
              fontSize: 14,
              height: 1.55,
              color: Color(0xff5F6068),
            ),
          ),

          const SizedBox(height: 24),

          Row(
            children: [
              const Text(
                'Category',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const Spacer(),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffF1EEFF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  club.category,
                  style: const TextStyle(
                    color: Color(0xff4A2ACF),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}