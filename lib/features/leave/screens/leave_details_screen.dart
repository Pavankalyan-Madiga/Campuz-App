import 'package:flutter/material.dart';

import '../widgets/leave_status_chip.dart';

class LeaveDetailsScreen extends StatelessWidget {
  final String status;

  const LeaveDetailsScreen({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    final bool isPending =
        status.toLowerCase() == 'pending';

    final bool isRejected =
        status.toLowerCase() == 'rejected';

    return Scaffold(
      backgroundColor: const Color(0xffFAFAFC),

      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,

        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
            color: Color(0xff202124),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        title: const Text(
          'Leave Details',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xff202124),
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(
          22,
          20,
          22,
          30,
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: const Color(0xffEEEEF3),
                ),
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Medical Leave',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff202124),
                    ),
                  ),

                  const SizedBox(height: 12),

                  LeaveStatusChip(
                    status: status,
                  ),

                  const SizedBox(height: 12),

                  Text(
                    _statusMessage(),
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xff777982),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            _sectionTitle('LEAVE INFORMATION'),

            const SizedBox(height: 12),

            _infoCard(),

            const SizedBox(height: 24),

            _sectionTitle('REASON'),

            const SizedBox(height: 12),

            _reasonCard(),

            if (isRejected) ...[
              const SizedBox(height: 24),

              _sectionTitle('REJECTION REASON'),

              const SizedBox(height: 12),

              _rejectionCard(),
            ],

            const SizedBox(height: 24),

            _sectionTitle('APPROVAL STATUS'),

            const SizedBox(height: 12),

            _timeline(),

            if (isPending) ...[
              const SizedBox(height: 28),

              SizedBox(
                width: double.infinity,
                height: 52,
                child: OutlinedButton(
                  onPressed: () {
                    _showCancelDialog(context);
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor:
                        const Color(0xffD32F2F),
                    side: const BorderSide(
                      color: Color(0xffE8BABA),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text(
                    'Cancel Request',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  String _statusMessage() {
    switch (status.toLowerCase()) {
      case 'approved':
        return 'Your leave request has been approved.';

      case 'rejected':
        return 'Your leave request was not approved.';

      case 'cancelled':
        return 'This request was cancelled.';

      default:
        return 'Waiting for approval.';
    }
  }

  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 11,
        letterSpacing: 1,
        fontWeight: FontWeight.w700,
        color: Color(0xff777982),
      ),
    );
  }

  Widget _infoCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xffEEEEF3),
        ),
      ),
      child: const Column(
        children: [
          _InfoRow(
            label: 'From',
            value: '28 August 2026',
          ),

          SizedBox(height: 15),

          _InfoRow(
            label: 'To',
            value: '29 August 2026',
          ),

          SizedBox(height: 15),

          _InfoRow(
            label: 'Duration',
            value: '2 Days',
          ),

          SizedBox(height: 15),

          _InfoRow(
            label: 'Submitted',
            value: '27 August 2026',
          ),
        ],
      ),
    );
  }

  Widget _reasonCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xffEEEEF3),
        ),
      ),
      child: const Text(
        'Health issue',
        style: TextStyle(
          fontSize: 14,
          color: Color(0xff55565D),
        ),
      ),
    );
  }

  Widget _rejectionCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        color: const Color(0xfffff5f5),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xffffdddd),
        ),
      ),
      child: const Text(
        'Please submit the required supporting document.',
        style: TextStyle(
          fontSize: 14,
          color: Color(0xffD32F2F),
        ),
      ),
    );
  }

  Widget _timeline() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xffEEEEF3),
        ),
      ),
      child: Column(
        children: [
          _timelineItem(
            title: 'Request Submitted',
            subtitle: '27 August 2026',
            completed: true,
            isLast: false,
          ),

          _timelineItem(
            title: 'Sent to Class Advisor',
            subtitle: 'Request received',
            completed: true,
            isLast: false,
          ),

          _timelineItem(
            title: status == 'Rejected'
                ? 'Request Rejected'
                : status == 'Approved'
                    ? 'Request Approved'
                    : 'Approval',
            subtitle: status == 'Pending'
                ? 'Waiting for approval'
                : status,
            completed: status != 'Pending',
            isLast: true,
          ),
        ],
      ),
    );
  }

  Widget _timelineItem({
    required String title,
    required String subtitle,
    required bool completed,
    required bool isLast,
  }) {
    return Row(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: completed
                    ? const Color(0xff4A2ACF)
                    : const Color(0xffEEEEF3),
              ),
              child: Icon(
                completed
                    ? Icons.check_rounded
                    : Icons.circle,
                size: completed ? 15 : 7,
                color: completed
                    ? Colors.white
                    : const Color(0xffB5B6BC),
              ),
            ),

            if (!isLast)
              Container(
                width: 2,
                height: 42,
                color: completed
                    ? const Color(0xffD8D0FF)
                    : const Color(0xffEEEEF3),
              ),
          ],
        ),

        const SizedBox(width: 13),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 2,
              bottom: 18,
            ),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: completed
                        ? const Color(0xff202124)
                        : const Color(0xff999AA1),
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xff777982),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showCancelDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Text(
            'Cancel Request?',
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          content: const Text(
            'Are you sure you want to cancel this leave request?',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(dialogContext);
              },
              child: const Text(
                'No',
                style: TextStyle(
                  color: Color(0xff777982),
                ),
              ),
            ),

            TextButton(
              onPressed: () {
                Navigator.pop(dialogContext);
                Navigator.pop(context);
              },
              child: const Text(
                'Yes, Cancel',
                style: TextStyle(
                  color: Color(0xffD32F2F),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xff777982),
            ),
          ),
        ),

        Text(
          value,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Color(0xff202124),
          ),
        ),
      ],
    );
  }
}