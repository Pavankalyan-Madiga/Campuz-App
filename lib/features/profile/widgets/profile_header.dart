import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Row(
        children: [
          const SizedBox(width: 10),

          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              size: 28,
              color: Color(0xff202124),
            ),
          ),

          const SizedBox(width: 5),

          const Text(
            'Profile',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w700,
              color: Color(0xff17171C),
            ),
          ),
        ],
      ),
    );
  }
}