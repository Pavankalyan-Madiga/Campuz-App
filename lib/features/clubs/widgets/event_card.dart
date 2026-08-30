import 'package:flutter/material.dart';

import '../models/event_model.dart';
import '../screens/event_detail_screen.dart';

class EventCard extends StatelessWidget {
  final EventModel event;

  const EventCard({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EventDetailScreen(
                event: event,
              );
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 18),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: const Color(0xffE5E5EA),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                color: const Color(0xffF0EBFF),
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Icon(
                Icons.event_rounded,
                size: 34,
                color: Color(0xff4A2ACF),
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    event.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff17171C),
                    ),
                  ),

                  const SizedBox(height: 6),

                  Text(
                    event.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 13,
                      height: 1.4,
                      color: Color(0xff777780),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Row(
                    children: [
                      const Icon(
                        Icons.access_time_rounded,
                        size: 16,
                        color: Color(0xff4A2ACF),
                      ),

                      const SizedBox(width: 5),

                      Expanded(
                        child: Text(
                          event.time,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff55555D),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 6),

                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 16,
                        color: Color(0xff777780),
                      ),

                      const SizedBox(width: 5),

                      Expanded(
                        child: Text(
                          event.venue,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xff777780),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(width: 5),

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