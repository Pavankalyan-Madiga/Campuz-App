import 'package:flutter/material.dart';
import '../models/club_model.dart';

class ClubCard extends StatelessWidget {
  final ClubModel club;
  final VoidCallback onTap;

  const ClubCard({
    super.key,
    required this.club,
    required this.onTap,
  });

  IconData _getIcon() {
    switch (club.category) {
      case 'Technical':
        return Icons.code_rounded;

      case 'Sports':
        return Icons.sports_cricket_rounded;

      case 'Arts':
        return Icons.palette_rounded;

      case 'Health':
        return Icons.self_improvement_rounded;

      case 'Social':
        return Icons.volunteer_activism_rounded;

      default:
        return Icons.groups_rounded;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: const Color(0xffEEEEF2),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 76,
              height: 76,
              decoration: BoxDecoration(
                color: const Color(0xffF1EEFF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                _getIcon(),
                size: 34,
                color: const Color(0xff4A2ACF),
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    club.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff17171C),
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    '${club.members} members  •  ${club.followers} followers',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xff777780),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 8),

            const Icon(
              Icons.chevron_right_rounded,
              color: Color(0xff9999A2),
              size: 26,
            ),
          ],
        ),
      ),
    );
  }
}