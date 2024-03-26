import 'package:flutter/cupertino.dart';
import 'package:project_seil/services/models/my_product.dart';
import '../features/product_card_widget.dart';

buildAllProduct() => GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (100 / 120),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      scrollDirection: Axis.vertical,
      itemCount: MyProduct.macProducts.length,
      itemBuilder: (context, index) {
        final allProducts = MyProduct.macProducts[index];
        return ProductCard(product: allProducts);
      },
    );
