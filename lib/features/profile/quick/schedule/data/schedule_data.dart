class ScheduleItem {
  final String time;
  final String subject;
  final String faculty;
  final bool isBreak;

  const ScheduleItem({
    required this.time,
    required this.subject,
    required this.faculty,
    this.isBreak = false,
  });
}

class ScheduleData {
  static const Map<int, List<ScheduleItem>> schedules = {
    0: [
      ScheduleItem(
        time: '09:00 AM - 10:00 AM',
        subject: 'Data Structures',
        faculty: 'Dr. Rajesh Kumar',
      ),
      ScheduleItem(
        time: '10:00 AM - 11:00 AM',
        subject: 'Database Management Systems',
        faculty: 'Prof. Suresh',
      ),
      ScheduleItem(
        time: '11:00 AM - 11:15 AM',
        subject: 'Break',
        faculty: '',
        isBreak: true,
      ),
      ScheduleItem(
        time: '11:15 AM - 12:15 PM',
        subject: 'Operating Systems',
        faculty: 'Dr. Priya Sharma',
      ),
      ScheduleItem(
        time: '12:15 PM - 01:15 PM',
        subject: 'Computer Networks',
        faculty: 'Prof. Anil Kumar',
      ),
      ScheduleItem(
        time: '01:15 PM - 02:00 PM',
        subject: 'Lunch Break',
        faculty: '',
        isBreak: true,
      ),
      ScheduleItem(
        time: '02:00 PM - 03:00 PM',
        subject: 'Software Engineering',
        faculty: 'Dr. Kavitha',
      ),
      ScheduleItem(
        time: '03:00 PM - 04:00 PM',
        subject: 'Web Technologies',
        faculty: 'Prof. Naveen',
      ),
      ScheduleItem(
        time: '04:00 PM - 05:00 PM',
        subject: 'Artificial Intelligence',
        faculty: 'Dr. Ramesh',
      ),
      ScheduleItem(
        time: '05:00 PM - 06:00 PM',
        subject: 'Programming Lab',
        faculty: 'Prof. Kiran',
      ),
    ],

    1: [
      ScheduleItem(
        time: '09:00 AM - 10:00 AM',
        subject: 'Web Technologies',
        faculty: 'Prof. Naveen',
      ),
      ScheduleItem(
        time: '10:00 AM - 11:00 AM',
        subject: 'Artificial Intelligence',
        faculty: 'Dr. Ramesh',
      ),
      ScheduleItem(
        time: '11:00 AM - 11:15 AM',
        subject: 'Break',
        faculty: '',
        isBreak: true,
      ),
      ScheduleItem(
        time: '11:15 AM - 12:15 PM',
        subject: 'Data Structures',
        faculty: 'Dr. Rajesh Kumar',
      ),
      ScheduleItem(
        time: '12:15 PM - 01:15 PM',
        subject: 'Computer Networks',
        faculty: 'Prof. Anil Kumar',
      ),
      ScheduleItem(
        time: '01:15 PM - 02:00 PM',
        subject: 'Lunch Break',
        faculty: '',
        isBreak: true,
      ),
      ScheduleItem(
        time: '02:00 PM - 03:00 PM',
        subject: 'Database Management Systems',
        faculty: 'Prof. Suresh',
      ),
      ScheduleItem(
        time: '03:00 PM - 04:00 PM',
        subject: 'Operating Systems',
        faculty: 'Dr. Priya Sharma',
      ),
      ScheduleItem(
        time: '04:00 PM - 05:00 PM',
        subject: 'Web Technologies Lab',
        faculty: 'Prof. Naveen',
      ),
      ScheduleItem(
        time: '05:00 PM - 06:00 PM',
        subject: 'Web Technologies Lab',
        faculty: 'Prof. Naveen',
      ),
    ],

    2: [
      ScheduleItem(
        time: '09:00 AM - 10:00 AM',
        subject: 'Operating Systems',
        faculty: 'Dr. Priya Sharma',
      ),
      ScheduleItem(
        time: '10:00 AM - 11:00 AM',
        subject: 'Software Engineering',
        faculty: 'Dr. Kavitha',
      ),
      ScheduleItem(
        time: '11:00 AM - 11:15 AM',
        subject: 'Break',
        faculty: '',
        isBreak: true,
      ),
      ScheduleItem(
        time: '11:15 AM - 12:15 PM',
        subject: 'Artificial Intelligence',
        faculty: 'Dr. Ramesh',
      ),
      ScheduleItem(
        time: '12:15 PM - 01:15 PM',
        subject: 'Database Management Systems',
        faculty: 'Prof. Suresh',
      ),
      ScheduleItem(
        time: '01:15 PM - 02:00 PM',
        subject: 'Lunch Break',
        faculty: '',
        isBreak: true,
      ),
      ScheduleItem(
        time: '02:00 PM - 03:00 PM',
        subject: 'Database Lab',
        faculty: 'Prof. Suresh',
      ),
      ScheduleItem(
        time: '03:00 PM - 04:00 PM',
        subject: 'Database Lab',
        faculty: 'Prof. Suresh',
      ),
      ScheduleItem(
        time: '04:00 PM - 05:00 PM',
        subject: 'Computer Networks',
        faculty: 'Prof. Anil Kumar',
      ),
      ScheduleItem(
        time: '05:00 PM - 06:00 PM',
        subject: 'Professional Skills',
        faculty: 'Dr. Meena',
      ),
    ],

    3: [
      ScheduleItem(
        time: '09:00 AM - 10:00 AM',
        subject: 'Computer Networks',
        faculty: 'Prof. Anil Kumar',
      ),
      ScheduleItem(
        time: '10:00 AM - 11:00 AM',
        subject: 'Data Structures',
        faculty: 'Dr. Rajesh Kumar',
      ),
      ScheduleItem(
        time: '11:00 AM - 11:15 AM',
        subject: 'Break',
        faculty: '',
        isBreak: true,
      ),
      ScheduleItem(
        time: '11:15 AM - 12:15 PM',
        subject: 'Web Technologies',
        faculty: 'Prof. Naveen',
      ),
      ScheduleItem(
        time: '12:15 PM - 01:15 PM',
        subject: 'Artificial Intelligence',
        faculty: 'Dr. Ramesh',
      ),
      ScheduleItem(
        time: '01:15 PM - 02:00 PM',
        subject: 'Lunch Break',
        faculty: '',
        isBreak: true,
      ),
      ScheduleItem(
        time: '02:00 PM - 03:00 PM',
        subject: 'Operating Systems Lab',
        faculty: 'Dr. Priya Sharma',
      ),
      ScheduleItem(
        time: '03:00 PM - 04:00 PM',
        subject: 'Operating Systems Lab',
        faculty: 'Dr. Priya Sharma',
      ),
      ScheduleItem(
        time: '04:00 PM - 05:00 PM',
        subject: 'Software Engineering',
        faculty: 'Dr. Kavitha',
      ),
      ScheduleItem(
        time: '05:00 PM - 06:00 PM',
        subject: 'Mini Project',
        faculty: 'Project Guide',
      ),
    ],

    4: [
      ScheduleItem(
        time: '09:00 AM - 10:00 AM',
        subject: 'Software Engineering',
        faculty: 'Dr. Kavitha',
      ),
      ScheduleItem(
        time: '10:00 AM - 11:00 AM',
        subject: 'Database Management Systems',
        faculty: 'Prof. Suresh',
      ),
      ScheduleItem(
        time: '11:00 AM - 11:15 AM',
        subject: 'Break',
        faculty: '',
        isBreak: true,
      ),
      ScheduleItem(
        time: '11:15 AM - 12:15 PM',
        subject: 'Computer Networks',
        faculty: 'Prof. Anil Kumar',
      ),
      ScheduleItem(
        time: '12:15 PM - 01:15 PM',
        subject: 'Web Technologies',
        faculty: 'Prof. Naveen',
      ),
      ScheduleItem(
        time: '01:15 PM - 02:00 PM',
        subject: 'Lunch Break',
        faculty: '',
        isBreak: true,
      ),
      ScheduleItem(
        time: '02:00 PM - 03:00 PM',
        subject: 'Mini Project',
        faculty: 'Project Guide',
      ),
      ScheduleItem(
        time: '03:00 PM - 04:00 PM',
        subject: 'Mini Project',
        faculty: 'Project Guide',
      ),
      ScheduleItem(
        time: '04:00 PM - 05:00 PM',
        subject: 'Artificial Intelligence',
        faculty: 'Dr. Ramesh',
      ),
      ScheduleItem(
        time: '05:00 PM - 06:00 PM',
        subject: 'Data Structures',
        faculty: 'Dr. Rajesh Kumar',
      ),
    ],

    5: [
      ScheduleItem(
        time: '09:00 AM - 10:00 AM',
        subject: 'Artificial Intelligence',
        faculty: 'Dr. Ramesh',
      ),
      ScheduleItem(
        time: '10:00 AM - 11:00 AM',
        subject: 'Operating Systems',
        faculty: 'Dr. Priya Sharma',
      ),
      ScheduleItem(
        time: '11:00 AM - 11:15 AM',
        subject: 'Break',
        faculty: '',
        isBreak: true,
      ),
      ScheduleItem(
        time: '11:15 AM - 12:15 PM',
        subject: 'Data Structures',
        faculty: 'Dr. Rajesh Kumar',
      ),
      ScheduleItem(
        time: '12:15 PM - 01:15 PM',
        subject: 'Software Engineering',
        faculty: 'Dr. Kavitha',
      ),
      ScheduleItem(
        time: '01:15 PM - 02:00 PM',
        subject: 'Lunch Break',
        faculty: '',
        isBreak: true,
      ),
      ScheduleItem(
        time: '02:00 PM - 03:00 PM',
        subject: 'Seminar',
        faculty: 'Department Faculty',
      ),
      ScheduleItem(
        time: '03:00 PM - 04:00 PM',
        subject: 'Seminar',
        faculty: 'Department Faculty',
      ),
      ScheduleItem(
        time: '04:00 PM - 05:00 PM',
        subject: 'Placement Training',
        faculty: 'Training Faculty',
      ),
      ScheduleItem(
        time: '05:00 PM - 06:00 PM',
        subject: 'Placement Training',
        faculty: 'Training Faculty',
      ),
    ],
  };
}