import 'package:flutter/material.dart';

int isSelected = 0;

buildProductCategory({
  required int index,
  required String name,
  required String image,
}) =>
    GestureDetector(
      onTap: () {

      },
      child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isSelected == index
              ? const Color(0xFF242424)
              : const Color(0xFFFFFFFF),
        ),
        margin: const EdgeInsets.only(
          top: 20,
          right: 10,
        ),
        padding: const EdgeInsets.only(
          top: 15,
        ),
        child: Column(
          children: [
            Image.asset(
              width: 50,
              image,
              color: isSelected == index
                  ? const Color(0xFFFFFFFF)
                  : const Color(0xFF242424),
            ),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: isSelected == index
                    ? const Color(0xFFFFFFFF)
                    : const Color(0xFF242424),
              ),
            ),
          ],
        ),
      ),
    );