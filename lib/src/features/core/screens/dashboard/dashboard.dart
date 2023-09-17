import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pettie_petstore/src/constants/size.dart';

import 'package:pettie_petstore/src/features/core/screens/widget/app_bar.dart';

import 'package:pettie_petstore/src/features/core/screens/widget/category_bar.dart';
import 'package:pettie_petstore/src/features/core/screens/widget/nav_bar.dart';

import 'package:pettie_petstore/src/features/core/screens/widget/product_carousel.dart';
import 'package:pettie_petstore/src/features/core/screens/widget/section_title.dart';

import '../../../../blocs/product/product_bloc.dart';
import '../widget/search_box.dart';

class Dashboard extends StatelessWidget {
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const Dashboard(),
    );
  }

  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      //CustomAppBar
      appBar: const MyAppBar(
        title: 'Pettie',
      ),

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
            SectionTitle(txtTheme: txtTheme, title: 'Category'),
            const CategoryBar(),
            SectionTitle(txtTheme: txtTheme, title: 'Recommended'),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state is ProductLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is ProductLoaded) {
                  return ProductCarousel(
                      products: state.products
                          .where((product) => product.isRecommended)
                          .toList());
                } else {
                  return const Text('Something went wrong');
                }
              },
            ),
            SectionTitle(txtTheme: txtTheme, title: 'Popular'),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state is ProductLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is ProductLoaded) {
                  return ProductCarousel(
                      products: state.products
                          .where((product) => product.isPopular)
                          .toList());
                } else {
                  return const Text('Something went wrong');
                }
              },
            ),
          ]),
        ),
      ),

      bottomNavigationBar: const NavBar(
        screen: routeName,
      ),
    );
  }
}
