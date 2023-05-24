import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/cart/cart_bloc.dart';
import '../../models/product/product_model.dart';

class CartProductCard extends StatelessWidget {
  final Product product;
  final int quantity;

  const CartProductCard({super.key, required this.product, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Image.network(
            product.imageUrl,
            width: 120,
            height: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  'Rs.${product.price}',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              return Row(
                children: [
                  IconButton(
                      onPressed: () {
context.read<CartBloc>().add(RemoveProduct(product));

                      }, icon: const Icon(Icons.remove_circle)),
                  Text(
                    '$quantity', 
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  IconButton(
                      onPressed: () {context.read<CartBloc>().add(AddProduct(product));}, icon: const Icon(Icons.add_circle))
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
