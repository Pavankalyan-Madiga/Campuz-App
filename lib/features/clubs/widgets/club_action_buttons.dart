import 'package:flutter/material.dart';

class ClubActionButtons extends StatefulWidget {
  const ClubActionButtons({
    super.key,
  });

  @override
  State<ClubActionButtons> createState() =>
      _ClubActionButtonsState();
}

class _ClubActionButtonsState
    extends State<ClubActionButtons> {
  bool isFollowing = false;
  bool isJoined = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                setState(() {
                  isFollowing = !isFollowing;
                });
              },
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(
                  double.infinity,
                  52,
                ),
                side: const BorderSide(
                  color: Color(0xff4A2ACF),
                  width: 1.2,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                isFollowing ? 'Following' : 'Follow',
                style: const TextStyle(
                  color: Color(0xff4A2ACF),
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isJoined = !isJoined;
                });
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(
                  double.infinity,
                  52,
                ),
                backgroundColor: const Color(0xff4A2ACF),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                isJoined ? 'Joined' : 'Join',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}