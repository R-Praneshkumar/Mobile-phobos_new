import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            const CircleAvatar(
              radius: 56,
              backgroundImage: NetworkImage(
                'https://lh3.googleusercontent.com/aida-public/AB6AXuBy_Ne7ExqjuuvoBTUUqBuENzVi522tqiDZHtUUo7xvdRR3wiZ2HwX7ShAInd_SVcdQymWLE5v83vX08xAqwxrNEmXrvBjMblFS3oZMqYENWxe0F191djLnIiuhn4hn2gzcVDmWp1Cw0MFMea5LSkeGxxgwXle4aysAdwzADIBPxMlGfHtqWEquFS0SF-rYY2YSpSveXuTUvvytrSo1wSCc0fYhSxAJTrnMJzNURzGq7JVZSqSYM_Sp-b37uuWYQ8ZHMonDojZ5zE4F',
              ),
            ),
            CircleAvatar(
              radius: 16,
              backgroundColor: Theme.of(context).primaryColor,
              child: const Icon(
                Icons.camera_alt,
                size: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Text(
          'Alex Johnson',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Chip(
          label: const Text('Product Manager'),
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
          labelStyle: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'alex.johnson@company.com',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
