import 'package:flutter/material.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
            color: Color(0xff202124),
            size: 27,
          ),
        ),
        title: const Text(
          'Help & Support',
          style: TextStyle(
            color: Color(0xff17171C),
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff5638D5),
                    Color(0xff7257E8),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(22),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.support_agent_rounded,
                    color: Colors.white,
                    size: 34,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'How can we help?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    'Find answers or get in touch with the Campuz support team.',
                    style: TextStyle(
                      color: Color(0xffE9E5FF),
                      fontSize: 12.5,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 28),

            const Text(
              'Quick Help',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xff202124),
              ),
            ),

            const SizedBox(height: 14),

            _HelpTile(
              icon: Icons.chat_bubble_outline_rounded,
              title: 'Contact Support',
              subtitle: 'Talk to our support team',
              onTap: () {
                _showMessage(
                  context,
                  'Support contact will be available soon',
                );
              },
            ),

            const SizedBox(height: 11),

            _HelpTile(
              icon: Icons.bug_report_outlined,
              title: 'Report a Problem',
              subtitle: 'Tell us about an issue',
              onTap: () {
                _showMessage(
                  context,
                  'Problem reporting will be available soon',
                );
              },
            ),

            const SizedBox(height: 28),

            const Text(
              'Frequently Asked Questions',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xff202124),
              ),
            ),

            const SizedBox(height: 14),

            _FaqTile(
              question: 'How do I update my profile?',
              answer:
                  'Open Profile, select Edit Profile, update your information and tap Save Changes.',
            ),

            const SizedBox(height: 10),

            _FaqTile(
              question: 'How can I view my timetable?',
              answer:
                  'Open My Schedule from your Profile or use the Schedule option available in the app.',
            ),

            const SizedBox(height: 10),

            _FaqTile(
              question: 'Where can I check campus announcements?',
              answer:
                  'Open Campus Feed to view the latest announcements and campus updates.',
            ),

            const SizedBox(height: 10),

            _FaqTile(
              question: 'How do I change my password?',
              answer:
                  'Open Profile, select Change Password and enter your current and new password.',
            ),

            const SizedBox(height: 28),

            const Text(
              'App Information',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xff202124),
              ),
            ),

            const SizedBox(height: 14),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(17),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: const Color(0xffE5E7EB),
                ),
              ),
              child: const Column(
                children: [
                  _InfoRow(
                    title: 'App',
                    value: 'Campuz',
                  ),
                  Divider(
                    height: 22,
                    color: Color(0xffEEEEF2),
                  ),
                  _InfoRow(
                    title: 'Version',
                    value: '1.0.0',
                  ),
                  Divider(
                    height: 22,
                    color: Color(0xffEEEEF2),
                  ),
                  _InfoRow(
                    title: 'Platform',
                    value: 'Flutter',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HelpTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _HelpTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(17),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(17),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            border: Border.all(
              color: const Color(0xffE5E7EB),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: const Color(0xffF1EEFF),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Icon(
                  icon,
                  color: const Color(0xff5638D5),
                  size: 21,
                ),
              ),
              const SizedBox(width: 13),
              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff292D36),
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 11.5,
                        color: Color(0xff8B8E96),
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.chevron_right_rounded,
                size: 23,
                color: Color(0xff9A9DA5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FaqTile extends StatelessWidget {
  final String question;
  final String answer;

  const _FaqTile({
    required this.question,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
        border: Border.all(
          color: const Color(0xffE5E7EB),
        ),
      ),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        childrenPadding: const EdgeInsets.fromLTRB(
          15,
          0,
          15,
          15,
        ),
        iconColor: const Color(0xff5638D5),
        collapsedIconColor: const Color(0xff777A83),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17),
        ),
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17),
        ),
        title: Text(
          question,
          style: const TextStyle(
            fontSize: 13.5,
            fontWeight: FontWeight.w600,
            color: Color(0xff292D36),
          ),
        ),
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              answer,
              style: const TextStyle(
                fontSize: 12,
                height: 1.45,
                color: Color(0xff747781),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String title;
  final String value;

  const _InfoRow({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            color: Color(0xff777A83),
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Color(0xff292D36),
          ),
        ),
      ],
    );
  }
}