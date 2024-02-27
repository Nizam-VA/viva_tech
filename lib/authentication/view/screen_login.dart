import 'package:flutter/material.dart';
import 'package:test_1/authentication/controller/auth_services.dart';
import 'package:test_1/home/view/screen_home.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: InkWell(
            onTap: () async {
              final response = await AuthService().signInWithGoogle();
              response.fold((error) {}, (success) {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => ScreenHome()),
                    (route) => false);
              });
            },
            child: Container(
              width: w,
              height: h * .06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Login with Google")],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
