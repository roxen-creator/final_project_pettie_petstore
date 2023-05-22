import 'package:flutter/material.dart';
import 'package:pettie_petstore/src/features/core/models/category_model/category_model.dart';
import 'package:pettie_petstore/src/features/core/models/product/product_model.dart';
import 'package:pettie_petstore/src/features/core/screens/widget/product_card.dart';

import 'package:pettie_petstore/src/features/core/screens/widget/nav_bar.dart';

import '../widget/app_bar.dart';

class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';
  static Route route({required Category category}) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => CatalogScreen(category: category),
    );
  }

  final Category category;

  const CatalogScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts =Product.products.where((product)=> product.category== category.name).toList();
    return Scaffold(
      //CustomAppBar
      appBar: MyAppBar(title: category.name),

      bottomNavigationBar: const NavBar(),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.15),
        itemCount: categoryProducts.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
              child: ProductCard(
            product: categoryProducts[index],
            widthFactor: 2.2,
          ));
        },
      ),
    );

    //  ProductCard(product: Product.products[0]),
  }
}
