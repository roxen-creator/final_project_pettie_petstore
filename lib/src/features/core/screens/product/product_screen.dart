import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pettie_petstore/src/features/core/models/product/product_model.dart';

import 'package:pettie_petstore/src/features/core/screens/widget/hero_carousel.dart';

import '../../../../blocs/wishlist/wishlist_bloc.dart';
import '../widget/app_bar.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';
  final Product product;

  const ProductScreen({Key? key, required this.product}) : super(key: key);

  static Route<dynamic> route({required Product product}) {
    return MaterialPageRoute<dynamic>(
      settings: const RouteSettings(name: routeName),
      builder: (BuildContext context) => ProductScreen(product: product),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: product.name),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                    color: Colors.white,
                  )),
              BlocBuilder<WishlistBloc, WishlistState>(
                builder: (context, state) {
                  return IconButton(
                    onPressed: () {
                      context
                          .read<WishlistBloc>()
                          .add(AddProductToWishlist(product));

                          // ignore: prefer_const_constructors
                          final snackBar =  SnackBar(content: Text('Added to your Wishlist!'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  );
                },
              ),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Text(
                    'ADD TO CART',
                    style: Theme.of(context).textTheme.displaySmall,
                  ))
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: [
                HeroCarouselCard(
                  product: product,
                )
              ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.bottomCenter,
                  height: 60,
                  color: Colors.black.withAlpha(50),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 10,
                  margin: const EdgeInsets.all(5.0),
                  height: 50,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.name,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.white),
                        ),
                        Text('Rs.${product.price}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Colors.white)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Text(
                'Product Detail ',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              children: [
                ListTile(
                  title: Text(
                    'going well so far i fell so burn out',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Text(
                'Deliver Information ',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              children: [
                ListTile(
                  title: Text(
                    'going well so far i fell so burn out',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      // HeroCarouselCard(product: product, ),
    );
  }
}
