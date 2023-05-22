
import 'package:flutter/material.dart';

import 'package:pettie_petstore/src/constants/size.dart';
import 'package:pettie_petstore/src/constants/string_manager.dart';
import 'package:pettie_petstore/src/features/core/screens/widget/app_bar.dart';

import 'package:pettie_petstore/src/features/core/screens/widget/category_bar.dart';
import 'package:pettie_petstore/src/features/core/screens/widget/nav_bar.dart';

import 'package:pettie_petstore/src/features/core/screens/widget/product_carousel.dart';
import 'package:pettie_petstore/src/features/core/screens/widget/search_bar.dart';
import 'package:pettie_petstore/src/features/core/screens/widget/section_title.dart';

import '../../models/product/product_model.dart';

class Dashboard extends StatelessWidget {
  static const String routeName ='/';
  static Route route(){

    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_)=> const Dashboard(),

    );
   
  }
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      //CustomAppBar
      appBar:const MyAppBar(title: 'Pettie',),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(dashBoardPadding),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Welcome,",
              style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                  color: Colors.black87),
            ),
            Text(
              "Name",
              style: txtTheme.displayMedium?.apply(color: Colors.grey),
            ),
            const SizedBox(
              height: dashBoardPadding,
            ),
            const SearchBar(),
            const SizedBox(
              height: dashBoardPadding,
            ),
            SectionTitle(txtTheme: txtTheme, title: catagories),
            const CategoryBar(),
            SectionTitle(txtTheme: txtTheme, title: 'Best Product'),
            ProductCarousel(
                products: Product.products
                    .where((product) => product.isBestProduct)
                    .toList()),
            SectionTitle(txtTheme: txtTheme, title: 'Recommended Product'),
            ProductCarousel(
                products: Product.products
                    .where((product) => product.isRecommended)
                    .toList()),
            SectionTitle(txtTheme: txtTheme, title: 'Popular Product'),
            ProductCarousel(
                products: Product.products
                    .where((product) => product.isPopular)
                    .toList()),
          ]),
        ),
      ),

      bottomNavigationBar: const NavBar(),
    );
  }
}
