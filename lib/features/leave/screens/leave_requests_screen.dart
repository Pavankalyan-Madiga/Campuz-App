import 'package:flutter/material.dart';

import '../data/leave_data.dart';
import '../models/leave_model.dart';
import '../widgets/leave_balance_card.dart';
import '../widgets/leave_request_card.dart';
import 'apply_leave_screen.dart';
import 'leave_details_screen.dart';

class LeaveRequestsScreen extends StatefulWidget {
  const LeaveRequestsScreen({
    super.key,
  });

  @override
  State<LeaveRequestsScreen> createState() =>
      _LeaveRequestsScreenState();
}

class _LeaveRequestsScreenState
    extends State<LeaveRequestsScreen> {
  // ============================================================
  // LEAVE REQUESTS
  // ============================================================

  final List<LeaveModel> leaveRequests = [
    ...LeaveData.requests,
  ];

  // ============================================================
  // OPEN APPLY LEAVE
  // ============================================================

  Future<void> _openApplyLeave() async {
    final LeaveModel? newLeave =
        await Navigator.push<LeaveModel>(
      context,
      MaterialPageRoute(
        builder: (context) =>
            const ApplyLeaveScreen(),
      ),
    );

    if (newLeave != null) {
      setState(() {
        leaveRequests.insert(
          0,
          newLeave,
        );
      });
    }
  }

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color(0xffFAFAFC),

      // ==========================================================
      // APP BAR
      // ==========================================================

      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor:
            Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
            color: Color(0xff202124),
          ),
        ),

        title: const Text(
          'Leave Requests',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xff202124),
          ),
        ),
      ),

      // ==========================================================
      // BODY
      // ==========================================================

      body: SingleChildScrollView(
        physics:
            const BouncingScrollPhysics(),

        padding:
            const EdgeInsets.fromLTRB(
          22,
          20,
          22,
          30,
        ),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            // ====================================================
            // BALANCE
            // ====================================================

            const LeaveBalanceCard(),

            const SizedBox(height: 18),

            // ====================================================
            // APPLY BUTTON
            // ====================================================

            _buildApplyButton(),

            const SizedBox(height: 30),

            // ====================================================
            // TITLE
            // ====================================================

            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'MY REQUESTS',
                  style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 1,
                    fontWeight:
                        FontWeight.w700,
                    color: Color(0xff777982),
                  ),
                ),

                Text(
                  '${leaveRequests.length} Requests',
                  style: const TextStyle(
                    fontSize: 11,
                    color:
                        Color(0xff999AA1),
                    fontWeight:
                        FontWeight.w500,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // ====================================================
            // REQUEST LIST
            // ====================================================

            if (leaveRequests.isEmpty)
              _buildEmptyState()
            else
              ...leaveRequests.map(
                (leave) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(
                      bottom: 12,
                    ),
                    child:
                        LeaveRequestCard(
                      leaveType:
                          leave.leaveType,
                      fromDate:
                          leave.fromDate,
                      toDate:
                          leave.toDate,
                      duration:
                          leave.duration,
                      reason:
                          leave.reason,
                      status:
                          leave.status,

                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) =>
                                    LeaveDetailsScreen(
                              status:
                                  leave.status,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // APPLY BUTTON
  // ============================================================

  Widget _buildApplyButton() {
    return InkWell(
      borderRadius:
          BorderRadius.circular(16),

      onTap: _openApplyLeave,

      child: Container(
        width: double.infinity,

        padding:
            const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 17,
        ),

        decoration: BoxDecoration(
          color:
              const Color(0xff4A2ACF),
          borderRadius:
              BorderRadius.circular(16),
        ),

        child: const Row(
          children: [
            Icon(
              Icons.add_rounded,
              color: Colors.white,
              size: 24,
            ),

            SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    'Apply for Leave',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight:
                          FontWeight.w700,
                    ),
                  ),

                  SizedBox(height: 3),

                  Text(
                    'Submit a new request',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),

            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white70,
              size: 17,
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // EMPTY STATE
  // ============================================================

  Widget _buildEmptyState() {
    return Container(
      width: double.infinity,

      padding:
          const EdgeInsets.symmetric(
        vertical: 45,
        horizontal: 20,
      ),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(16),
        border: Border.all(
          color:
              const Color(0xffEEEEF3),
        ),
      ),

      child: const Column(
        children: [
          Icon(
            Icons.assignment_outlined,
            size: 42,
            color:
                Color(0xffB5B6BC),
          ),

          SizedBox(height: 12),

          Text(
            'No leave requests',
            style: TextStyle(
              fontSize: 16,
              fontWeight:
                  FontWeight.w700,
              color:
                  Color(0xff202124),
            ),
          ),

          SizedBox(height: 5),

          Text(
            'Your submitted leave requests will appear here.',
            textAlign:
                TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color:
                  Color(0xff777982),
            ),
          ),
        ],
      ),
    );
  }
}