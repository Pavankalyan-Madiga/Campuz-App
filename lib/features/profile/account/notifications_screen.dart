import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() =>
      _NotificationsScreenState();
}

class _NotificationsScreenState
    extends State<NotificationsScreen> {
  final List<Map<String, dynamic>> notifications = [
    {
      'icon': Icons.campaign_outlined,
      'title': 'New Campus Announcement',
      'message':
          'A new announcement has been posted on Campus Feed.',
      'time': '10 min ago',
      'read': false,
    },
    {
      'icon': Icons.calendar_month_outlined,
      'title': 'Class Schedule Updated',
      'message':
          'Your timetable has been updated for tomorrow.',
      'time': '1 hour ago',
      'read': false,
    },
    {
      'icon': Icons.assignment_outlined,
      'title': 'Leave Request Update',
      'message':
          'Your leave request status has been updated.',
      'time': '3 hours ago',
      'read': true,
    },
    {
      'icon': Icons.event_outlined,
      'title': 'Placement Drive',
      'message':
          'A new placement drive has been announced.',
      'time': 'Yesterday',
      'read': true,
    },
    {
      'icon': Icons.groups_outlined,
      'title': 'Campus Event',
      'message':
          'Cultural Night registration is now open.',
      'time': 'Yesterday',
      'read': true,
    },
  ];

  void _markAllRead() {
    setState(() {
      for (final notification in notifications) {
        notification['read'] = true;
      }
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('All notifications marked as read'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _openNotification(int index) {
    setState(() {
      notifications[index]['read'] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final unreadCount = notifications
        .where((notification) => notification['read'] == false)
        .length;

    return Scaffold(
      backgroundColor: const Color(0xffF7F8FA),
      appBar: AppBar(
        backgroundColor: const Color(0xffF7F8FA),
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            size: 27,
            color: Color(0xff202124),
          ),
        ),
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xff17171C),
          ),
        ),
        actions: [
          if (unreadCount > 0)
            TextButton(
              onPressed: _markAllRead,
              child: const Text(
                'Mark all read',
                style: TextStyle(
                  color: Color(0xff5638D5),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
        ],
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(
          20,
          10,
          20,
          30,
        ),
        itemCount: notifications.length,
        separatorBuilder: (_, __) {
          return const SizedBox(height: 10);
        },
        itemBuilder: (context, index) {
          final notification = notifications[index];
          final bool unread = notification['read'] == false;

          return Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                _openNotification(index);
              },
              borderRadius: BorderRadius.circular(18),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: unread
                      ? const Color(0xffF1EEFF)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: unread
                        ? const Color(0xffDDD6FE)
                        : const Color(0xffE5E7EB),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: unread
                            ? const Color(0xff5638D5)
                            : const Color(0xffF1F2F4),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Icon(
                        notification['icon'],
                        size: 21,
                        color: unread
                            ? Colors.white
                            : const Color(0xff666A73),
                      ),
                    ),

                    const SizedBox(width: 13),

                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  notification['title'],
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: unread
                                        ? FontWeight.w700
                                        : FontWeight.w600,
                                    color:
                                        const Color(0xff292D36),
                                  ),
                                ),
                              ),
                              if (unread)
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration:
                                      const BoxDecoration(
                                    color: Color(0xff5638D5),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                            ],
                          ),

                          const SizedBox(height: 5),

                          Text(
                            notification['message'],
                            style: const TextStyle(
                              fontSize: 12,
                              height: 1.4,
                              color: Color(0xff747781),
                            ),
                          ),

                          const SizedBox(height: 7),

                          Text(
                            notification['time'],
                            style: const TextStyle(
                              fontSize: 10.5,
                              color: Color(0xff9A9DA5),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}