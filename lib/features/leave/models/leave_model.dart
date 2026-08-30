class LeaveModel {
  final String leaveType;
  final String fromDate;
  final String toDate;
  final String duration;
  final String reason;
  final String status;

  const LeaveModel({
    required this.leaveType,
    required this.fromDate,
    required this.toDate,
    required this.duration,
    required this.reason,
    required this.status,
  });
}