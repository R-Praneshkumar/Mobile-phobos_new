import 'package:app/widgets/profile/profile_header.dart';
import 'package:app/widgets/profile/profile_stats.dart';
import 'package:app/widgets/profile/settings_list.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f7f8),
      appBar: AppBar(
        backgroundColor: const Color(0xfff6f7f8),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Edit',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 16),
            ProfileHeader(),
            SizedBox(height: 24),
            ProfileStats(),
            SizedBox(height: 24),
            SettingsList(),
            SizedBox(height: 16),
            Text(
              'Version 2.4.0 (Build 342)',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
