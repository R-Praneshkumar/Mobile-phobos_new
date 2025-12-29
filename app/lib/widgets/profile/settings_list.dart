import 'package:flutter/material.dart';

class SettingsList extends StatelessWidget {
  const SettingsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(title: 'Account Settings'),
          SettingsGroup(
            items: [
              SettingsItem(
                icon: Icons.notifications,
                iconColor: Colors.white,
                iconBackgroundColor: Colors.blue,
                title: 'Notifications',
                onTap: () {},
              ),
              SettingsItem(
                icon: Icons.lock,
                iconColor: Colors.white,
                iconBackgroundColor: Colors.green,
                title: 'Privacy & Security',
                onTap: () {},
              ),
              SettingsItem(
                icon: Icons.language,
                iconColor: Colors.white,
                iconBackgroundColor: Colors.indigo,
                title: 'Language',
                trailing: const Text(
                  'English',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: 24),
          const SectionHeader(title: 'Support'),
          SettingsGroup(
            items: [
              SettingsItem(
                icon: Icons.help,
                iconColor: Colors.white,
                iconBackgroundColor: Colors.grey,
                title: 'Help Center',
                trailing:
                    const Icon(Icons.open_in_new, size: 20, color: Colors.grey),
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: 24),
          ListTile(
            title: const Text(
              'Log Out',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {},
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Colors.grey[200]!),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
    );
  }
}

class SettingsGroup extends StatelessWidget {
  const SettingsGroup({super.key, required this.items});

  final List<SettingsItem> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) => items[index],
        separatorBuilder: (context, index) => const Divider(
          height: 1,
          indent: 68,
        ),
      ),
    );
  }
}

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    super.key,
    required this.icon,
    required this.title,
    this.iconColor,
    this.iconBackgroundColor,
    this.trailing,
    this.onTap,
  });

  final IconData icon;
  final Color? iconColor;
  final Color? iconBackgroundColor;
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: iconBackgroundColor,
        child: Icon(icon, color: iconColor, size: 20),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing:
          trailing ?? const Icon(Icons.chevron_right, color: Colors.grey),
      onTap: onTap,
    );
  }
}
