import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recent Activity',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('View all'),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey[200]!),
            ),
            child: Column(
              children: const [
                ActivityItem(
                  icon: Icons.check_circle,
                  iconColor: Colors.green,
                  title: 'Leave Request Approved',
                  subtitle: 'Sick Leave • Oct 24',
                ),
                Divider(height: 1, indent: 68),
                ActivityItem(
                  icon: Icons.send,
                  iconColor: Colors.blue,
                  title: 'Self-Evaluation Submitted',
                  subtitle: 'Q3 Review • Oct 20',
                ),
                Divider(height: 1, indent: 68),
                ActivityItem(
                  icon: Icons.person_add,
                  iconColor: Colors.purple,
                  title: 'New Packet Assigned',
                  subtitle: 'Performance Plan • Oct 15',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ActivityItem extends StatelessWidget {
  const ActivityItem({
    super.key,
    required this.icon,
    this.iconColor,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final Color? iconColor;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(icon, color: iconColor),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.black54,
        ),
      ),
      trailing: const Icon(Icons.chevron_right),
    );
  }
}
