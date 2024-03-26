import 'package:flutter/material.dart';

class NotificationW extends StatelessWidget {
  const NotificationW({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFFFFFFF)
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.shopping_cart_outlined,
        ),
      ),
    );
  }
}
