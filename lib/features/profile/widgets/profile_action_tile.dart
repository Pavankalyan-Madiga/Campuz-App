import 'package:flutter/material.dart';

class ProfileActionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const ProfileActionTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(17),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(17),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 13,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            border: Border.all(
              color: const Color(0xffE7E8EC),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 43,
                height: 43,
                decoration: BoxDecoration(
                  color: const Color(0xffF1EEFF),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Icon(
                  icon,
                  color: const Color(0xff5638D5),
                  size: 21,
                ),
              ),

              const SizedBox(width: 13),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff292D36),
                      ),
                    ),

                    const SizedBox(height: 3),

                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 11.5,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8B8E96),
                      ),
                    ),
                  ],
                ),
              ),

              const Icon(
                Icons.chevron_right_rounded,
                size: 23,
                color: Color(0xff9A9DA5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}