import 'package:flutter/material.dart';

class EditProfileButtonWidget extends StatelessWidget {
  const EditProfileButtonWidget({
    super.key,
    required this.w,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: w,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.green[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
            child: Text(
          'Edit Profile',
          style: TextStyle(fontSize: 16, color: Colors.green[900]),
        )),
      ),
    );
  }
}
