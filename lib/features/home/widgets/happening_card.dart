import 'package:flutter/material.dart';

class HappeningCard extends StatelessWidget {
  final String time;
  final String title;
  final String subtitle;
  final Color color;

  const HappeningCard({
    super.key,
    required this.time,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 205,
      padding: const EdgeInsets.fromLTRB(
        16,
        14,
        14,
        13,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            time,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 9),

          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              height: 1.2,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Spacer(),

          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: Colors.white70,
                size: 15,
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Text(
                  subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 11,
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