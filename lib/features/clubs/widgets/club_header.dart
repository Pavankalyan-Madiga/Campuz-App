import 'package:flutter/material.dart';
import '../models/club_model.dart';

class ClubHeader extends StatelessWidget {
  final ClubModel club;

  const ClubHeader({
    super.key,
    required this.club,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(
        20,
        18,
        20,
        24,
      ),
      decoration: const BoxDecoration(
        color: Color(0xff4A2ACF),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(28),
          bottomRight: Radius.circular(28),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 28,
                ),
              ),

              const Spacer(),

              const Icon(
                Icons.more_horiz_rounded,
                color: Colors.white,
                size: 28,
              ),
            ],
          ),

          const SizedBox(height: 22),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 92,
                height: 92,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Icon(
                  Icons.groups_rounded,
                  size: 48,
                  color: const Color(0xff4A2ACF),
                ),
              ),

              const SizedBox(width: 18),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      club.name,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Row(
                      children: [
                        _Stat(
                          value: club.members.toString(),
                          label: 'Members',
                        ),

                        Container(
                          height: 34,
                          width: 1,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 18,
                          ),
                          color: Colors.white30,
                        ),

                        _Stat(
                          value: club.followers.toString(),
                          label: 'Followers',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  final String value;
  final String label;

  const _Stat({
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}