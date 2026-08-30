import 'package:flutter/material.dart';

import '../data/clubs_data.dart';
import '../data/events_data.dart';
import '../widgets/club_card.dart';
import '../widgets/event_card.dart';
import 'club_detail_screen.dart';

class ClubsScreen extends StatefulWidget {
  const ClubsScreen({super.key});

  @override
  State<ClubsScreen> createState() => _ClubsScreenState();
}

class _ClubsScreenState extends State<ClubsScreen> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F8FA),

      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,

        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 28,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        title: const Text(
          'Clubs',
          style: TextStyle(
            color: Color(0xff17171C),
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),

      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(
              20,
              16,
              20,
              8,
            ),
            height: 48,
            decoration: BoxDecoration(
              color: const Color(0xffEDEDF2),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              children: [
                _buildTab(
                  title: 'Clubs',
                  index: 0,
                ),
                _buildTab(
                  title: 'Events',
                  index: 1,
                ),
              ],
            ),
          ),

          Expanded(
            child: selectedTab == 0
                ? _buildClubs()
                : _buildEvents(),
          ),
        ],
      ),
    );
  }

  Widget _buildTab({
    required String title,
    required int index,
  }) {
    final bool selected = selectedTab == index;

    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedTab = index;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(
            milliseconds: 200,
          ),
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: selected
                ? Colors.white
                : Colors.transparent,
            borderRadius: BorderRadius.circular(11),
            boxShadow: selected
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ]
                : null,
          ),
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: selected
                  ? FontWeight.w700
                  : FontWeight.w500,
              color: selected
                  ? const Color(0xff4A2ACF)
                  : const Color(0xff777780),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildClubs() {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(
        20,
        18,
        20,
        30,
      ),
      itemCount: collegeClubs.length,
      itemBuilder: (context, index) {
        final club = collegeClubs[index];

        return ClubCard(
          club: club,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ClubDetailScreen(
                    club: club,
                  );
                },
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildEvents() {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(
        20,
        18,
        20,
        30,
      ),
      itemCount: collegeEvents.length,
      itemBuilder: (context, index) {
        final event = collegeEvents[index];

        return EventCard(
          event: event,
        );
      },
    );
  }
}