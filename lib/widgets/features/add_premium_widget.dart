import 'package:flutter/material.dart';

class PremiumAddW extends StatelessWidget {
  const PremiumAddW({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 386,
      height: 130,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Image.asset('assets/images/Component 6 (1).png'),
          Positioned(
            left: 25,
            top: 25,
            child: Column(
              children: [
                const Text(
                  'MacBook Pro',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(right: 25),
                    padding: const EdgeInsets.only(top: 3),
                    width: 125,
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: const Text(
                      'Templain Premium',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF242424),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
