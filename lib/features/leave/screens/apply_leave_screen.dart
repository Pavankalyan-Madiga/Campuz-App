import 'package:flutter/material.dart';

import '../models/leave_model.dart';

class ApplyLeaveScreen extends StatefulWidget {
  const ApplyLeaveScreen({
    super.key,
  });

  @override
  State<ApplyLeaveScreen> createState() =>
      _ApplyLeaveScreenState();
}

class _ApplyLeaveScreenState
    extends State<ApplyLeaveScreen> {
  // ============================================================
  // VARIABLES
  // ============================================================

  String selectedLeaveType =
      'Medical Leave';

  DateTime? fromDate;
  DateTime? toDate;

  final TextEditingController
      reasonController =
      TextEditingController();

  // ============================================================
  // DURATION
  // ============================================================

  int get duration {
    if (fromDate == null ||
        toDate == null) {
      return 0;
    }

    return toDate!
            .difference(fromDate!)
            .inDays +
        1;
  }

  // ============================================================
  // DISPOSE
  // ============================================================

  @override
  void dispose() {
    reasonController.dispose();
    super.dispose();
  }

  // ============================================================
  // SELECT DATE
  // ============================================================

  Future<void> _selectDate({
    required bool isFromDate,
  }) async {
    final DateTime? picked =
        await showDatePicker(
      context: context,

      initialDate: isFromDate
          ? DateTime.now()
          : (fromDate ??
              DateTime.now()),

      firstDate: DateTime.now(),

      lastDate:
          DateTime(2030),
    );

    if (picked == null) {
      return;
    }

    setState(() {
      if (isFromDate) {
        fromDate = picked;

        if (toDate != null &&
            toDate!.isBefore(picked)) {
          toDate = null;
        }
      } else {
        toDate = picked;
      }
    });
  }

  // ============================================================
  // SUBMIT REQUEST
  // ============================================================

  void _submitRequest() {
    // ----------------------------------------------------------
    // VALIDATION
    // ----------------------------------------------------------

    if (fromDate == null ||
        toDate == null ||
        reasonController.text
            .trim()
            .isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(
        const SnackBar(
          content: Text(
            'Please complete all required fields.',
          ),
        ),
      );

      return;
    }

    // ----------------------------------------------------------
    // CREATE LEAVE MODEL
    // ----------------------------------------------------------

    final LeaveModel newLeave =
        LeaveModel(
      leaveType:
          selectedLeaveType,

      fromDate:
          _formatDate(fromDate!),

      toDate:
          _formatDate(toDate!),

      duration:
          '$duration '
          '${duration == 1 ? 'Day' : 'Days'}',

      reason:
          reasonController.text.trim(),

      status: 'Pending',
    );

    // ----------------------------------------------------------
    // SHOW SUCCESS DIALOG
    // ----------------------------------------------------------

    showDialog(
      context: context,
      barrierDismissible: false,

      builder: (dialogContext) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(
              20,
            ),
          ),

          title: const Text(
            'Request Submitted',
            style: TextStyle(
              fontWeight:
                  FontWeight.w700,
              color:
                  Color(0xff202124),
            ),
          ),

          content: const Text(
            'Your leave request has been submitted successfully.',
            style: TextStyle(
              fontSize: 14,
              color:
                  Color(0xff55565D),
            ),
          ),

          actions: [
            TextButton(
              onPressed: () {
                // Close dialog
                Navigator.pop(
                  dialogContext,
                );

                // Return new leave
                // to LeaveRequestsScreen
                Navigator.pop(
                  context,
                  newLeave,
                );
              },

              child: const Text(
                'Done',
                style: TextStyle(
                  color:
                      Color(0xff4A2ACF),
                  fontWeight:
                      FontWeight.w700,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor:
          const Color(0xffFAFAFC),

      // ========================================================
      // APP BAR
      // ========================================================

      appBar: AppBar(
        backgroundColor:
            Colors.white,

        surfaceTintColor:
            Colors.transparent,

        elevation: 0,

        scrolledUnderElevation:
            0,

        leading: IconButton(
          icon: const Icon(
            Icons
                .arrow_back_ios_new_rounded,
            size: 20,
            color:
                Color(0xff202124),
          ),

          onPressed: () {
            Navigator.pop(context);
          },
        ),

        title: const Text(
          'Apply for Leave',
          style: TextStyle(
            fontSize: 20,
            fontWeight:
                FontWeight.w700,
            color:
                Color(0xff202124),
          ),
        ),
      ),

      // ========================================================
      // BODY
      // ========================================================

      body:
          SingleChildScrollView(
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
            // ==================================================
            // LEAVE TYPE
            // ==================================================

            _label(
              'LEAVE TYPE',
            ),

            const SizedBox(
              height: 8,
            ),

            _leaveTypeDropdown(),

            const SizedBox(
              height: 22,
            ),

            // ==================================================
            // FROM
            // ==================================================

            _label('FROM'),

            const SizedBox(
              height: 8,
            ),

            _dateField(
              date: fromDate,
              hint:
                  'Select start date',

              onTap: () {
                _selectDate(
                  isFromDate: true,
                );
              },
            ),

            const SizedBox(
              height: 18,
            ),

            // ==================================================
            // TO
            // ==================================================

            _label('TO'),

            const SizedBox(
              height: 8,
            ),

            _dateField(
              date: toDate,
              hint:
                  'Select end date',

              onTap:
                  fromDate == null
                      ? () {
                          ScaffoldMessenger
                                  .of(
                            context,
                          ).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Please select the start date first.',
                              ),
                            ),
                          );
                        }
                      : () {
                          _selectDate(
                            isFromDate:
                                false,
                          );
                        },
            ),

            const SizedBox(
              height: 22,
            ),

            // ==================================================
            // DURATION
            // ==================================================

            _label(
              'DURATION',
            ),

            const SizedBox(
              height: 8,
            ),

            _durationCard(),

            const SizedBox(
              height: 22,
            ),

            // ==================================================
            // REASON
            // ==================================================

            _label('REASON'),

            const SizedBox(
              height: 8,
            ),

            _reasonField(),

            const SizedBox(
              height: 22,
            ),

            // ==================================================
            // ATTACHMENT
            // ==================================================

            _label(
              'ATTACHMENT',
            ),

            const SizedBox(
              height: 8,
            ),

            _attachmentField(),

            const SizedBox(
              height: 30,
            ),

            // ==================================================
            // SUBMIT BUTTON
            // ==================================================

            SizedBox(
              width:
                  double.infinity,

              height: 54,

              child:
                  ElevatedButton(
                onPressed:
                    _submitRequest,

                style:
                    ElevatedButton
                        .styleFrom(
                  backgroundColor:
                      const Color(
                    0xff4A2ACF,
                  ),

                  foregroundColor:
                      Colors.white,

                  elevation: 0,

                  shape:
                      RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius
                            .circular(
                      16,
                    ),
                  ),
                ),

                child: const Text(
                  'Submit Request',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight:
                        FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // LABEL
  // ============================================================

  Widget _label(
    String text,
  ) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 11,
        letterSpacing: 1,
        fontWeight:
            FontWeight.w700,
        color:
            Color(0xff777982),
      ),
    );
  }

  // ============================================================
  // LEAVE TYPE DROPDOWN
  // ============================================================

  Widget _leaveTypeDropdown() {
    return Container(
      padding:
          const EdgeInsets.symmetric(
        horizontal: 16,
      ),

      decoration:
          BoxDecoration(
        color: Colors.white,

        borderRadius:
            BorderRadius.circular(
          16,
        ),

        border: Border.all(
          color:
              const Color(0xffEEEEF3),
        ),
      ),

      child:
          DropdownButtonHideUnderline(
        child:
            DropdownButton<String>(
          value:
              selectedLeaveType,

          isExpanded: true,

          icon: const Icon(
            Icons
                .keyboard_arrow_down_rounded,
          ),

          items: const [
            DropdownMenuItem(
              value:
                  'Medical Leave',
              child: Text(
                'Medical Leave',
              ),
            ),

            DropdownMenuItem(
              value:
                  'Sick Leave',
              child: Text(
                'Sick Leave',
              ),
            ),

            DropdownMenuItem(
              value:
                  'Personal Leave',
              child: Text(
                'Personal Leave',
              ),
            ),

            DropdownMenuItem(
              value:
                  'Emergency Leave',
              child: Text(
                'Emergency Leave',
              ),
            ),

            DropdownMenuItem(
              value: 'Other',
              child: Text(
                'Other',
              ),
            ),
          ],

          onChanged:
              (value) {
            if (value ==
                null) {
              return;
            }

            setState(() {
              selectedLeaveType =
                  value;
            });
          },
        ),
      ),
    );
  }

  // ============================================================
  // DATE FIELD
  // ============================================================

  Widget _dateField({
    required DateTime? date,
    required String hint,
    required VoidCallback onTap,
  }) {
    return InkWell(
      borderRadius:
          BorderRadius.circular(
        16,
      ),

      onTap: onTap,

      child: Container(
        width:
            double.infinity,

        padding:
            const EdgeInsets.all(
          16,
        ),

        decoration:
            BoxDecoration(
          color: Colors.white,

          borderRadius:
              BorderRadius.circular(
            16,
          ),

          border: Border.all(
            color:
                const Color(
              0xffEEEEF3,
            ),
          ),
        ),

        child: Row(
          children: [
            const Icon(
              Icons
                  .calendar_today_outlined,
              size: 20,
              color:
                  Color(0xff4A2ACF),
            ),

            const SizedBox(
              width: 11,
            ),

            Expanded(
              child: Text(
                date == null
                    ? hint
                    : _formatDate(
                        date,
                      ),

                style:
                    TextStyle(
                  fontSize: 14,

                  fontWeight:
                      date == null
                          ? FontWeight
                              .w400
                          : FontWeight
                              .w600,

                  color:
                      date == null
                          ? const Color(
                              0xffA0A1A7,
                            )
                          : const Color(
                              0xff202124,
                            ),
                ),
              ),
            ),

            const Icon(
              Icons
                  .chevron_right_rounded,
              color:
                  Color(0xffB5B6BC),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // DURATION CARD
  // ============================================================

  Widget _durationCard() {
    return Container(
      width:
          double.infinity,

      padding:
          const EdgeInsets.all(
        16,
      ),

      decoration:
          BoxDecoration(
        color:
            const Color(0xffF1EEFF),

        borderRadius:
            BorderRadius.circular(
          16,
        ),
      ),

      child: Row(
        children: [
          const Icon(
            Icons.timelapse_rounded,
            color:
                Color(0xff4A2ACF),
          ),

          const SizedBox(
            width: 10,
          ),

          Text(
            duration == 0
                ? 'Select dates'
                : '$duration '
                    '${duration == 1 ? 'Day' : 'Days'}',

            style:
                const TextStyle(
              color:
                  Color(0xff4A2ACF),
              fontSize: 15,
              fontWeight:
                  FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // REASON FIELD
  // ============================================================

  Widget _reasonField() {
    return Container(
      decoration:
          BoxDecoration(
        color: Colors.white,

        borderRadius:
            BorderRadius.circular(
          16,
        ),

        border: Border.all(
          color:
              const Color(
            0xffEEEEF3,
          ),
        ),
      ),

      child: TextField(
        controller:
            reasonController,

        maxLines: 5,

        decoration:
            const InputDecoration(
          hintText:
              'Enter your reason...',

          hintStyle:
              TextStyle(
            color:
                Color(0xffA0A1A7),
            fontSize: 14,
          ),

          border:
              InputBorder.none,

          contentPadding:
              EdgeInsets.all(
            16,
          ),
        ),
      ),
    );
  }

  // ============================================================
  // ATTACHMENT
  // ============================================================

  Widget _attachmentField() {
    return InkWell(
      borderRadius:
          BorderRadius.circular(
        16,
      ),

      onTap: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(
          const SnackBar(
            content: Text(
              'File picker can be connected here.',
            ),
          ),
        );
      },

      child: Container(
        width:
            double.infinity,

        padding:
            const EdgeInsets.all(
          16,
        ),

        decoration:
            BoxDecoration(
          color: Colors.white,

          borderRadius:
              BorderRadius.circular(
            16,
          ),

          border: Border.all(
            color:
                const Color(
              0xffEEEEF3,
            ),
          ),
        ),

        child: const Row(
          children: [
            Icon(
              Icons
                  .attach_file_rounded,
              color:
                  Color(0xff4A2ACF),
            ),

            SizedBox(
              width: 10,
            ),

            Expanded(
              child: Text(
                'Add document',
                style:
                    TextStyle(
                  fontSize: 14,
                  fontWeight:
                      FontWeight.w500,
                  color:
                      Color(0xff55565D),
                ),
              ),
            ),

            Icon(
              Icons.add_rounded,
              color:
                  Color(0xff4A2ACF),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // FORMAT DATE
  // ============================================================

  String _formatDate(
    DateTime date,
  ) {
    return '${date.day.toString().padLeft(2, '0')} '
        '${_month(date.month)} '
        '${date.year}';
  }

  // ============================================================
  // MONTH
  // ============================================================

  String _month(
    int month,
  ) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];

    return months[month - 1];
  }
}