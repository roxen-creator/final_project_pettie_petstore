import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/cart/cart_bloc.dart';

import '../widget/app_bar.dart';
import '../widget/cart_product_card.dart';
import '../widget/order_summary.dart';

class Cart extends StatelessWidget {
  static const String routeName = '/cart';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const Cart(),
    );
  }

  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //CustomAppBar
        appBar: const MyAppBar(
          title: 'Cart',
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {
                      Navigator.pushNamed(context, '/checkout');
                    },
                    child: Text(
                      'GO TO CHECKOUT',
                      style: Theme.of(context).textTheme.displaySmall,
                    ))
              ],
            ),
          ),
        ),
        body: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            if (state is CartLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is CartLoaded) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                state.cart.freeDeliveryString,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/');
                                },
                                child: Text(
                                  'Add More',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .apply(
                                          fontSizeFactor: 0.7,
                                          color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 500,
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return CartProductCard(
                                  product: state.cart
                                      .productQuantity(state.cart.products)
                                      .keys
                                      .elementAt(index),
                                  quantity: state.cart
                                      .productQuantity(state.cart.products)
                                      .values
                                      .elementAt(index),
                                );
                              },
                              itemCount: state.cart
                                  .productQuantity(state.cart.products)
                                  .keys
                                  .length,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const OrderSummary(),
                  ],
                ),
              );
            } else {
              return const Text('Something went wrong');
            }
          },
        ));
  }
}
