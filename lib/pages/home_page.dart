import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_seil/widgets/features/add_premium_widget.dart';
import 'package:project_seil/widgets/features/circle_avatar_widget.dart';
import 'package:project_seil/widgets/features/notification_widget.dart';
import 'package:project_seil/widgets/global/all_product_widget.dart';
import 'package:project_seil/widgets/global/mac_category_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE5E5E5),
        leadingWidth: 126,
        leading: MaterialButton(
          onPressed: () {},
          child: const Row(
            children: [
              Icon(
                Icons.apple,
                size: 40,
              ),
              Text(
                'iStore',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: const [
          NotificationW(),
          Gap(20),
          CircleAvatarW(),
          Gap(25),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const PremiumAddW(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildProductCategory(
                    index: 0,
                    name: 'Mac',
                    image: 'assets/images/mac.png',
                  ),
                  buildProductCategory(
                    index: 1,
                    name: 'iPhone',
                    image: 'assets/images/iphone.png',
                  ),
                  buildProductCategory(
                    index: 2,
                    name: 'iPad',
                    image: 'assets/images/ipad.png',
                  ),
                  buildProductCategory(
                    index: 3,
                    name: 'Watch',
                    image: 'assets/images/watch.png',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: buildAllProduct(),
            ),
          ],
        ),
      ),
    );
  }
}
