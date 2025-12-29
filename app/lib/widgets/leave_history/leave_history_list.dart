import 'package:flutter/material.dart';

class LeaveHistoryList extends StatelessWidget {
  const LeaveHistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          MonthHeader(month: 'December 2023'),
          LeaveHistoryListItem(
            date: '24',
            month: 'Dec',
            title: 'Annual Vacation',
            subtitle: 'Christmas break with family',
            status: 'Pending',
            duration: 'Dec 24 - Dec 30 (7 days)',
          ),
          MonthHeader(month: 'November 2023'),
          LeaveHistoryListItem(
            date: '20',
            month: 'Nov',
            title: 'Casual Leave',
            subtitle: 'Personal errands',
            status: 'Rejected',
            duration: 'Nov 20 (1 day)',
          ),
          MonthHeader(month: 'October 2023'),
          LeaveHistoryListItem(
            date: '12',
            month: 'Oct',
            title: 'Sick Leave',
            subtitle: 'Recovering from flu...',
            status: 'Approved',
            duration: 'Oct 12 - Oct 14 (3 days)',
          ),
          LeaveHistoryListItem(
            date: '02',
            month: 'Oct',
            title: 'Work From Home',
            subtitle: 'Plumber appointment',
            status: 'Approved',
            duration: 'Oct 02 (1 day)',
          ),
        ],
      ),
    );
  }
}

class MonthHeader extends StatelessWidget {
  const MonthHeader({super.key, required this.month});

  final String month;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Row(
        children: [
          Text(
            month,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const Expanded(
            child: Divider(
              indent: 8,
              endIndent: 8,
            ),
          ),
        ],
      ),
    );
  }
}

class LeaveHistoryListItem extends StatelessWidget {
  const LeaveHistoryListItem({
    super.key,
    required this.date,
    required this.month,
    required this.title,
    required this.subtitle,
    required this.status,
    required this.duration,
  });

  final String date;
  final String month;
  final String title;
  final String subtitle;
  final String status;
  final String duration;

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Pending':
        return Colors.orange;
      case 'Rejected':
        return Colors.red;
      case 'Approved':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final statusColor = _getStatusColor(status);
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: statusColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: statusColor.withOpacity(0.2)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    month,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: statusColor,
                    ),
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: statusColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          status,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: statusColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_today,
                        size: 14,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        duration,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
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
