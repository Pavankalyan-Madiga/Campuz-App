import 'package:flutter/material.dart';

import '../models/event_model.dart';

class EventDetailScreen extends StatelessWidget {
  final EventModel event;

  const EventDetailScreen({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F8FA),
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(context),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(
                  20,
                  22,
                  20,
                  110,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildHeroCard(),

                    const SizedBox(height: 30),

                    _buildSectionTitle('Event Information'),

                    const SizedBox(height: 14),

                    _buildInformationCard(),

                    const SizedBox(height: 30),

                    _buildSectionTitle('About this Event'),

                    const SizedBox(height: 12),

                    Text(
                      event.description,
                      style: const TextStyle(
                        fontSize: 15,
                        height: 1.65,
                        color: Color(0xff62626B),
                      ),
                    ),

                    const SizedBox(height: 30),

                    _buildSectionTitle('Event Highlights'),

                    const SizedBox(height: 14),

                    ...event.highlights.map(
                      (highlight) {
                        return _buildHighlightCard(
                          highlight,
                        );
                      },
                    ),

                    if (event.technicalAreas.isNotEmpty) ...[
                      const SizedBox(height: 22),

                      _buildSectionTitle(
                        'Key Technical Areas',
                      ),

                      const SizedBox(height: 14),

                      _buildTechnicalAreas(),
                    ],

                    if (event.additionalSectionTitle != null &&
                        event.additionalSectionDescription != null) ...[
                      const SizedBox(height: 30),

                      _buildSectionTitle(
                        event.additionalSectionTitle!,
                      ),

                      const SizedBox(height: 12),

                      Text(
                        event.additionalSectionDescription!,
                        style: const TextStyle(
                          fontSize: 15,
                          height: 1.65,
                          color: Color(0xff62626B),
                        ),
                      ),
                    ],

                    if (event.culturalSectionTitle != null &&
                        event.culturalSectionDescription != null) ...[
                      const SizedBox(height: 30),

                      _buildSectionTitle(
                        event.culturalSectionTitle!,
                      ),

                      const SizedBox(height: 12),

                      Text(
                        event.culturalSectionDescription!,
                        style: const TextStyle(
                          fontSize: 15,
                          height: 1.65,
                          color: Color(0xff62626B),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomButton(),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      height: 68,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              size: 30,
              color: Color(0xff202124),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Text(
              event.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w700,
                color: Color(0xff17171C),
              ),
            ),
          ),
          const SizedBox(width: 18),
        ],
      ),
    );
  }

  Widget _buildHeroCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xff4A2ACF),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.calendar_month_rounded,
              size: 40,
              color: Color(0xff4A2ACF),
            ),
          ),

          const SizedBox(height: 24),

          Text(
            event.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w700,
              height: 1.2,
            ),
          ),

          const SizedBox(height: 9),

          Text(
            event.organization,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),

          const SizedBox(height: 18),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.16),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Text(
              event.category,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Color(0xff17171C),
      ),
    );
  }

  Widget _buildInformationCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: const Color(0xffE7E7EC),
        ),
      ),
      child: Column(
        children: [
          _buildInfoRow(
            icon: Icons.calendar_month_rounded,
            label: 'Date',
            value: event.date,
          ),

          _buildDivider(),

          _buildInfoRow(
            icon: Icons.access_time_rounded,
            label: 'Time',
            value: event.time,
          ),

          _buildDivider(),

          _buildInfoRow(
            icon: Icons.location_on_outlined,
            label: 'Venue',
            value: event.venue,
          ),

          _buildDivider(),

          _buildInfoRow(
            icon: Icons.business_rounded,
            label: 'Organized By',
            value: event.organization,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: const Color(0xffF0ECFF),
              borderRadius: BorderRadius.circular(13),
            ),
            child: Icon(
              icon,
              size: 22,
              color: const Color(0xff4A2ACF),
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xff92929A),
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xff29292F),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return const Divider(
      height: 1,
      color: Color(0xffEEEEF1),
    );
  }

  Widget _buildHighlightCard(String highlight) {
    IconData icon = Icons.auto_awesome_rounded;

    final lower = highlight.toLowerCase();

    if (lower.contains('hack')) {
      icon = Icons.code_rounded;
    } else if (lower.contains('robot')) {
      icon = Icons.smart_toy_rounded;
    } else if (lower.contains('paper') ||
        lower.contains('project')) {
      icon = Icons.description_rounded;
    } else if (lower.contains('quiz')) {
      icon = Icons.quiz_rounded;
    } else if (lower.contains('gaming') ||
        lower.contains('e-sport')) {
      icon = Icons.sports_esports_rounded;
    } else if (lower.contains('code')) {
      icon = Icons.developer_mode_rounded;
    } else if (lower.contains('hardware')) {
      icon = Icons.memory_rounded;
    } else if (lower.contains('pitch')) {
      icon = Icons.present_to_all_rounded;
    } else if (lower.contains('qiskit')) {
      icon = Icons.science_rounded;
    } else if (lower.contains('treasure')) {
      icon = Icons.search_rounded;
    }

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        bottom: 12,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0xffE7E7EC),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: const Color(0xffF0ECFF),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(
              icon,
              size: 24,
              color: const Color(0xff4A2ACF),
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Text(
              highlight,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xff29292F),
              ),
            ),
          ),

          const Icon(
            Icons.chevron_right_rounded,
            size: 25,
            color: Color(0xffA0A0A8),
          ),
        ],
      ),
    );
  }

  Widget _buildTechnicalAreas() {
    return Wrap(
      spacing: 9,
      runSpacing: 10,
      children: event.technicalAreas.map(
        (area) {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 13,
              vertical: 9,
            ),
            decoration: BoxDecoration(
              color: const Color(0xffF0ECFF),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Text(
              area,
              style: const TextStyle(
                color: Color(0xff4A2ACF),
                fontSize: 12.5,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        },
      ).toList(),
    );
  }

  Widget _buildBottomButton() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.fromLTRB(
          20,
          10,
          20,
          12,
        ),
        decoration: const BoxDecoration(
          color: Color(0xffF7F8FA),
        ),
        child: SizedBox(
          height: 56,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff4A2ACF),
              foregroundColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
              ),
            ),
            child: const Text(
              'Register for Event',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}