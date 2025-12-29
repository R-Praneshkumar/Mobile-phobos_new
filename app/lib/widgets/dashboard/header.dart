import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
              'https://lh3.googleusercontent.com/aida-public/AB6AXuDjS3fggtd0huYRN3L2UrnlQsxh4ZcxfPfEPQOeLuuX2YJN1dKvoIF3nks8BrHdxYe8VkP55ZQ1gXeLS1LBI5E1xeXV71z7CShe4Ft6tEmUH6dfypDmtbHsMyCP2xqgBJ3-Uk0BO7JScjm9Fx_-HIoTStclSKJUC4B3wAoosFqTdxDW0UmMlVKOGm9ROmdb_Ybf6lr1LJk0aD6RBuUZo2zTCP4EPny94bBO40k28v2eV1Vv6yd0izaSHXS80PIcw8lPxc6dOkaxlL81',
            ),
          ),
          const SizedBox(width: 12),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back,',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
              Text(
                'Alex Morgan',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
    );
  }
}
