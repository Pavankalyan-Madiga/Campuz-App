import 'package:flutter/material.dart';

import '../data/events_data.dart';
import '../widgets/event_card.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

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
            color: Color(0xff17171C),
            size: 28,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        title: const Text(
          'Events',
          style: TextStyle(
            color: Color(0xff17171C),
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(
          20,
          20,
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
      ),
    );
  }
}