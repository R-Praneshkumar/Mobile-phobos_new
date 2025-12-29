import 'package:flutter/material.dart';

class LeaveBreakdown extends StatelessWidget {
  const LeaveBreakdown({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Leave Breakdown',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          LeaveTypeCard(
            leaveType: 'Casual Leave',
            annualQuota: 12,
            available: 8,
            used: 4,
            progressColor: Colors.blue,
            icon: Icons.beach_access,
            iconBackgroundColor: Color(0xffe3f2fd),
          ),
          SizedBox(height: 12),
          LeaveTypeCard(
            leaveType: 'Sick Leave',
            annualQuota: 10,
            available: 9,
            used: 1,
            progressColor: Colors.teal,
            icon: Icons.medication,
            iconBackgroundColor: Color(0xffe0f2f1),
          ),
          SizedBox(height: 12),
          LeaveTypeCard(
            leaveType: 'Earned Leave',
            annualQuota: 15,
            available: 5,
            used: 10,
            progressColor: Colors.purple,
            icon: Icons.work_history,
            iconBackgroundColor: Color(0xfff3e5f5),
          ),
          SizedBox(height: 12),
          LeaveTypeCard(
            leaveType: 'Compensatory Off',
            annualQuota: 3,
            available: 2,
            used: 1,
            progressColor: Colors.orange,
            icon: Icons.timer_off,
            iconBackgroundColor: Color(0xfffff3e0),
          ),
        ],
      ),
    );
  }
}

class LeaveTypeCard extends StatelessWidget {
  const LeaveTypeCard({
    super.key,
    required this.leaveType,
    required this.annualQuota,
    required this.available,
    required this.used,
    required this.progressColor,
    required this.icon,
    this.iconBackgroundColor,
  });

  final String leaveType;
  final int annualQuota;
  final int available;
  final int used;
  final Color progressColor;
  final IconData icon;
  final Color? iconBackgroundColor;

  @override
  Widget build(BuildContext context) {
    final double progress = used / annualQuota;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: iconBackgroundColor,
                    child: Icon(icon, color: progressColor),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        leaveType,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Annual Quota: $annualQuota',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '$available',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: progressColor,
                    ),
                  ),
                  const Text(
                    'Available',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation<Color>(progressColor),
              minHeight: 8,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Used: $used days',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
              Text(
                '${(progress * 100).toStringAsFixed(0)}% Used',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black45,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
