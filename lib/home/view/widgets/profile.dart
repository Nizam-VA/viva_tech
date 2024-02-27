import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(),
            image: const DecorationImage(
              image: AssetImage('assets/images/nizam.jpg'),
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          width: 200,
          height: 100,
          padding: const EdgeInsets.all(8),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nissamudeen VA',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Nissamudeen-VA',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Rank',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  Text(
                    '13453',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
