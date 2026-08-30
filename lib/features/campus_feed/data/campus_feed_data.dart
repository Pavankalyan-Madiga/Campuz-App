import '../models/campus_post_model.dart';

const List<CampusPostModel> campusFeedPosts = [
  CampusPostModel(
    id: 'post_001',
    authorName: 'JAGAN MOHAN REDDY T',
    authorRole: 'DATA ENTRY OPERATOR',
    authorInitial: 'J',
    dateTime: 'Aug 27, 2026 5:34 PM',
    title:
        'II Year BPT, B.Sc (ATOT, MLT) (2024 Admitted Batch) 2nd MID Examinations Schedule',
    content: '2nd MID Examinations Schedule',
    postType: 'Announcement',
    isUrgent: true,
    attachments: [
      CampusPostAttachment(
        name: '2_BPT_BSc(ATOT_MLT)_2nd_MID_Exams_Schedule.pdf',
        type: 'pdf',
        path: '',
      ),
    ],
    likeCount: 24,
    loveCount: 12,
    smileCount: 5,
    insightCount: 3,
  ),

  CampusPostModel(
    id: 'post_002',
    authorName: 'KRUPA KUMAR B',
    authorRole: 'DATA ENTRY OPERATOR',
    authorInitial: 'K',
    dateTime: 'Aug 26, 2026 9:54 AM',
    title: 'II B.Tech Lateral Entry Students',
    content:
        'All II B.Tech Lateral Entry students are requested to submit their recent passport size photograph and required documents before the mentioned deadline.',
    postType: 'Notice Board',
    isUrgent: true,
    attachments: [
      CampusPostAttachment(
        name: 'II_BTech_Lateral_Entry_Students_Notice.pdf',
        type: 'pdf',
        path: '',
      ),
    ],
    likeCount: 10,
    loveCount: 6,
    smileCount: 2,
    insightCount: 4,
  ),

  CampusPostModel(
    id: 'post_003',
    authorName: 'JAGAN MOHAN REDDY T',
    authorRole: 'DATA ENTRY OPERATOR',
    authorInitial: 'J',
    dateTime: 'Aug 26, 2026 10:59 AM',
    title:
        'Rejoin Student EEE III B.Tech I Semester AITS 1st Internal Lab Examination Schedule',
    content:
        'Rejoin Student EEE AITS 1st Internal Lab Examination Schedule',
    postType: 'Announcement',
    isUrgent: false,
    attachments: [
      CampusPostAttachment(
        name:
            'Rejoin_Student_EEE_3I_BTech_1st_Internal_Lab_Examination.pdf',
        type: 'pdf',
        path: '',
      ),
    ],
    likeCount: 18,
    loveCount: 9,
    smileCount: 4,
    insightCount: 2,
  ),

  CampusPostModel(
    id: 'post_004',
    authorName: 'JAGAN MOHAN REDDY T',
    authorRole: 'DATA ENTRY OPERATOR',
    authorInitial: 'J',
    dateTime: 'Aug 26, 2026 10:56 AM',
    title:
        'IV B.Tech I Semester Substitute Subject ECE 1st MID Examinations Schedule',
    content:
        'Substitute Subject ECE Ist MID Examinations Schedule',
    postType: 'Announcement',
    isUrgent: true,
    attachments: [
      CampusPostAttachment(
        name:
            'Substitute_Subject_ECE_4I_BTech_1st_MID_Examinations.pdf',
        type: 'pdf',
        path: '',
      ),
    ],
    likeCount: 14,
    loveCount: 7,
    smileCount: 3,
    insightCount: 2,
  ),

  CampusPostModel(
    id: 'post_005',
    authorName: 'JAGAN MOHAN REDDY T',
    authorRole: 'DATA ENTRY OPERATOR',
    authorInitial: 'J',
    dateTime: 'Aug 22, 2026 10:53 AM',
    title:
        'Revised Schedule III B.Tech I Semester CE & ECE AITS 1st Internal Examinations',
    content:
        'Revised Schedule CE & ECE Rejoin Students AITS 1st MID Examinations',
    postType: 'Notice Board',
    isUrgent: false,
    attachments: [
      CampusPostAttachment(
        name:
            'Revised_Schedule_Rejoin_Students_CE_ECE_1st_MID.pdf',
        type: 'pdf',
        path: '',
      ),
    ],
    likeCount: 21,
    loveCount: 11,
    smileCount: 5,
    insightCount: 4,
  ),

  CampusPostModel(
    id: 'post_006',
    authorName: 'Campus Administration',
    authorRole: 'ADMIN',
    authorInitial: 'C',
    dateTime: 'Aug 21, 2026 2:15 PM',
    title: 'Independence Day Campus Celebration',
    content:
        'Students are invited to participate in the Independence Day celebration at the Main Auditorium. All students are requested to report by 8:30 AM.',
    postType: 'Post',
    isUrgent: false,
    attachments: [
      CampusPostAttachment(
        name: 'Independence_Day_Celebration_Poster.jpg',
        type: 'image',
        path: '',
      ),
    ],
    likeCount: 42,
    loveCount: 18,
    smileCount: 12,
    insightCount: 8,
  ),
];