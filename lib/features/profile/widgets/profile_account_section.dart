import 'package:flutter/material.dart';

class ProfileAccountSection extends StatelessWidget {
  const ProfileAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xffE5E7EB),
        ),
      ),
      child: Column(
        children: [
          _AccountTile(
            icon: Icons.edit_outlined,
            title: 'Edit Profile',
            onTap: () {
              // Open Edit Profile
            },
          ),

          const Divider(
            height: 1,
            indent: 65,
            endIndent: 15,
            color: Color(0xffEEEEF2),
          ),

          _AccountTile(
            icon: Icons.notifications_none_rounded,
            title: 'Notifications',
            onTap: () {
              // Open Notifications
            },
          ),

          const Divider(
            height: 1,
            indent: 65,
            endIndent: 15,
            color: Color(0xffEEEEF2),
          ),

          _AccountTile(
            icon: Icons.lock_outline_rounded,
            title: 'Change Password',
            onTap: () {
              // Open Change Password
            },
          ),

          const Divider(
            height: 1,
            indent: 65,
            endIndent: 15,
            color: Color(0xffEEEEF2),
          ),

          _AccountTile(
            icon: Icons.help_outline_rounded,
            title: 'Help & Support',
            onTap: () {
              // Open Help & Support
            },
          ),
        ],
      ),
    );
  }
}

class _AccountTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  const _AccountTile({
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 14,
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xffF4F4F7),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                size: 20,
                color: const Color(0xff565962),
              ),
            ),

            const SizedBox(width: 12),

            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff292D36),
                ),
              ),
            ),

            const Icon(
              Icons.chevron_right_rounded,
              size: 22,
              color: Color(0xff9A9DA5),
            ),
          ],
        ),
      ),
    );
  }
}