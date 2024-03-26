import 'package:flutter/material.dart';
import 'package:project_seil/services/models/product.dart';

class ProductCard extends StatefulWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Stack(
            children: [
              Image.asset(
                width: 130,
                height: 80,
                widget.product.image,
                fit: BoxFit.cover,
              ),
              Positioned(
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            width: 60,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFF0F0F0),
            ),
            child: Text(
              "${widget.product.category}",
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            widget.product.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
