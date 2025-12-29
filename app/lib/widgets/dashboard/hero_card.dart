import 'package:flutter/material.dart';

class HeroCard extends StatelessWidget {
  const HeroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Container(
              height: 128,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuCtSGJhDzVylVjaLNt0JX0WbyIA9YSX5Jnv3ANWgJ1dc1NGJh2FSN8TOGkhvaV3fhf2bdOnlt-vMzdB7EFl-TklpLIYGhu--A5-XLYTAI5PZ6q2tcZOZ9eGuP7YkenpSvNaIeKXQP5LCJxTlJFTxPsa-qJqkO5ZYjPy9t549KSwxeCimC9kL9jOUvtWh_FJjU_qIckecW_AtRMRYYozJm106ucO4gbIMxUKa4UpH1zrTUNxzTne757M2vs6hMbe9gky9sS9UcCNtWew',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.6),
                    ],
                  ),
                ),
                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: Colors.green,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Active Cycle',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Text(
                          '2023 Q4 Appraisal Packet',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Completion Status',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        '65%',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: 0.65,
                    backgroundColor: Colors.grey[200],
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 28,
                        child: Stack(
                          children: [
                            const CircleAvatar(
                              radius: 14,
                              backgroundImage: NetworkImage(
                                'https://lh3.googleusercontent.com/aida-public/AB6AXuCqv9zEvIO68rtPebvHZJhwr62Wezr9SIGIg6kwnUU01qOyIeWq4Tzm4ssL32t2DecYfy9GXbqzK6S6V8IqSUdrT_Nqr2WqVPumgAXWzkivhWwSUm8X788oIL7Pt4maoBZOq8BU82mBgGiV-8vAXAHRPYBdeZeXjC85Eqe8sdTSUUCuGz0TfyofrLoedmmt1FdNY8Wr-XDX-_1MKBnum9-qvcs2lEsBIhtZs2mhjuaPAxW7F0gqh9Ops-SitEodqLEo5KpiRmpCHDCP',
                              ),
                            ),
                            const Positioned(
                              left: 20,
                              child: CircleAvatar(
                                radius: 14,
                                backgroundImage: NetworkImage(
                                  'https://lh3.googleusercontent.com/aida-public/AB6AXuC-bIPGe535jqzb0-jmKd8H9e2QhLNTLGNashAdb-xF7SgDfnNB4ScJyMuvFX9PVFanpEgGqiSIkxgc6eJ3hTFJVVcsXH5X5DQFDA_HvTrjVkqGRi3YH1YXkF1FwlKliuP0SO6jFSi-NOoTxCLQjrN0H9c8pTwpSq2tsIN1QWFuzvtTEFp83xy_efKQeVl0lUc3HhRa5RAQnZaLoLViqL6K6A_VRRv4EFxRxWWl9ym9l-_Fu2-yCbwg1XIL9d0zaGoEyjbMBx1A9BsI',
                                ),
                              ),
                            ),
                            Positioned(
                              left: 40,
                              child: CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.grey[200],
                                child: const Text(
                                  '+3',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Text('Manage Packets'),
                            SizedBox(width: 4),
                            Icon(Icons.arrow_forward, size: 16),
                          ],
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
