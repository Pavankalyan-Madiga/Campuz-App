import 'package:flutter/material.dart';
import 'package:mycamps/features/classroom/announcements/widgets/announcement_card.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFAFAFC),
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(
          20,
          18,
          20,
          30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            const Text(
              'TODAY',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xffA1A6AE),
              ),
            ),

            const SizedBox(height: 12),

            AnnouncementCard(
              initials: 'SM',
              teacher: 'Prof. Sarah Miller',
              subject: 'DATA STRUCTURES',
              message:
                  "Tomorrow's class is shifted to Lab Block D (Room LD-3) for hands-on coding session. Bring your laptops. Attendance is mandatory.",
              time: '10:15 AM',
              tag: 'Room changed',
              avatarColor: const Color(0xffDAD9FF),
              subjectColor: const Color(0xffDAD9FF),
              subjectTextColor: const Color(0xff5146A8),
            ),

            AnnouncementCard(
              initials: 'RK',
              teacher: 'Prof. R. Kumar',
              subject: 'MATHEMATICS',
              message:
                  'Test 3 syllabus: Unit 4 & 5 only. Closed book. No calculators. Seating arrangement will be posted tomorrow.',
              time: '9:30 AM',
              tag: 'Test alert',
              avatarColor: const Color(0xffffedb8),
              subjectColor: const Color(0xffffefc6),
              subjectTextColor: const Color(0xffAD8427),
            ),

            const SizedBox(height: 10),

            const Text(
              'YESTERDAY',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xffA1A6AE),
              ),
            ),

            const SizedBox(height: 12),

            AnnouncementCard(
              initials: 'GG',
              teacher: 'Prof. Gupta',
              subject: 'OS',
              message:
                  'Sharing the OS notes for deadlock chapter. Go through before next class. PDF attached below.',
              time: '4:20 PM',
              tag: 'Deadlock_Notes_Ch7.pdf',
              avatarColor: const Color(0xffD8F4E4),
              subjectColor: const Color(0xffEBD8FF),
              subjectTextColor: const Color(0xff8850B0),
              showDownload: true,
            ),

            AnnouncementCard(
              initials: 'PR',
              teacher: 'Prof. Rao',
              subject: 'PHYSICS',
              message:
                  'Lab report for Experiment 6 (Interference) is graded. Check your scores. Re-submission allowed for below 60%.',
              time: '2:10 PM',
              tag: 'Grades posted',
              avatarColor: const Color(0xffffdfe4),
              subjectColor: const Color(0xffD7F6F5),
              subjectTextColor: const Color(0xff429A9A),
            ),

            AnnouncementCard(
              initials: 'SM',
              teacher: 'Prof. Sarah Miller',
              subject: 'DATA STRUCTURES',
              message:
                  'Good news — BST assignment deadline extended to Nov 20 midnight. No further extensions after this.',
              time: '11:00 AM',
              tag: 'Deadline extended',
              avatarColor: const Color(0xffDAD9FF),
              subjectColor: const Color(0xffDAD9FF),
              subjectTextColor: const Color(0xff5146A8),
            ),
          ],
        ),
      ),
    );
  }
}