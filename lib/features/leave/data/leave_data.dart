import '../models/leave_model.dart';

class LeaveData {
  static const List<LeaveModel> requests = [
    LeaveModel(
      leaveType: 'Medical Leave',
      fromDate: '28 Aug 2026',
      toDate: '29 Aug 2026',
      duration: '2 Days',
      reason: 'Health issue',
      status: 'Pending',
    ),

    LeaveModel(
      leaveType: 'Personal Leave',
      fromDate: '20 Aug 2026',
      toDate: '21 Aug 2026',
      duration: '2 Days',
      reason: 'Family function',
      status: 'Approved',
    ),

    LeaveModel(
      leaveType: 'Personal Leave',
      fromDate: '12 Aug 2026',
      toDate: '12 Aug 2026',
      duration: '1 Day',
      reason: 'Personal work',
      status: 'Rejected',
    ),
  ];
}