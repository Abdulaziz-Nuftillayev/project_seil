import 'package:flutter/material.dart';

class CircleAvatarW extends StatelessWidget {
  const CircleAvatarW({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint('bosildi');
      },
      child: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/profile.png'),
        backgroundColor: Colors.red,
      ),
    );
  }
}
