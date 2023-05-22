
import 'package:flutter/material.dart';

import '../../models/product/product_model.dart';

class CartProductCard extends StatelessWidget {
  final Product product;
  const CartProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: Row(
        children: [
          Image.network(
            product.imageUrl,
            width: 120,
            height: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(product.name, style: Theme.of(context).textTheme.displaySmall,),
          
               Text('Rs.${product.price}', style: Theme.of(context).textTheme.displaySmall,),
            ],),
          ),
          const SizedBox(width: 10,),
          Row(children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.remove_circle)),
            Text('1', style: Theme.of(context).textTheme.displayMedium,),
              IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle
              ))
          ],)
        ],
      ),
    );
  }
}
