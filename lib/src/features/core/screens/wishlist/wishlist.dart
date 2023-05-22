import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pettie_petstore/src/features/core/screens/widget/nav_bar.dart';

import '../../../../blocs/wishlist/wishlist_bloc.dart';

import '../widget/product_card.dart';
import '../widget/app_bar.dart';

class Wishlist extends StatelessWidget {
  static const String routeName = '/wishlist';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const Wishlist(),
    );
  }

  const Wishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //CustomAppBar
      appBar: const MyAppBar(title: 'Wishlist'),
      bottomNavigationBar: const NavBar(),
      body: BlocBuilder<WishlistBloc, WishlistState>(builder: (context, state) {
        if (state is WishlistLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is WishlistLoaded) {
          return GridView.builder(
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, childAspectRatio: 2.4),
            itemCount: state.wishlist.products.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: ProductCard(
                  product: state.wishlist.products[index],
                  widthFactor: 1.1,
                  leftPosition: 100,
                  iswishlist: true,
                ),
              );
            },
          );
        } else {
          return const Text("Something Went Wrong");
        }
      }),
    );
  }
}
