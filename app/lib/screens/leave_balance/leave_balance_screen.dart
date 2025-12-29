import 'package:app/widgets/leave_balance/leave_breakdown.dart';
import 'package:app/widgets/leave_balance/recent_activity_section.dart';
import 'package:app/widgets/leave_balance/total_balance.dart';
import 'package:flutter/material.dart';

class LeaveBalanceScreen extends StatelessWidget {
  const LeaveBalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f7f8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Leave Balance',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black87),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: const CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage(
                  'https://lh3.googleusercontent.com/aida-public/AB6AXuD45S9i3ENXy2eLjxZTzIjKsnss8n_WrYckkzQxzVHqFVfFMM6HT8v7t_i2KWzfkbrc80E1qme02FQ0pYbUElXWIexQLf9096MvM8eWqtVdEqfDCVdRBTK90fc5V56ghh6fCiJXuSyWxPv7Rf5j8s0LLGBL0EZAJTvk3ROOeW0u7X5XQyPDWP51xSrUqfofHgUFssUFDMbI6wTLFxtNbRr3rMQMWYaSKUkssZcT7F0Tw91eaYeY6uXlOUTK5gwTPyHCA6r4EsdKk9c-',
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TotalBalance(),
            LeaveBreakdown(),
            RecentActivitySection(),
            SizedBox(height: 100),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text('Apply Leave'),
          icon: const Icon(Icons.add_circle),
          elevation: 4,
          backgroundColor: const Color(0xff197fe6),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
