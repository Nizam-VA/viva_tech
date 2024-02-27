import 'package:flutter/material.dart';
import 'package:test_1/home/view/widgets/edit_profile_button.dart';
import 'package:test_1/home/view/widgets/profile.dart';
import 'package:test_1/utils/constants.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.badge),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                width: w,
                height: h,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[50],
                    border: Border.all()),
                child: Column(
                  children: [
                    const Profile(),
                    kHeight30,
                    const Text(
                      'Mobile Application Developer using Flutter. Skills in Dart | State management(BLoC, Provider, Getx) | API Integration | Data Structures | Hive | SQFlite | Firebase.',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),
                    kHeight10,
                    EditProfileButtonWidget(w: w)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
