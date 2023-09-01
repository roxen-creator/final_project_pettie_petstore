import 'package:flutter/material.dart';

import '../../models/product/product_model.dart';

class OrderSummaryProductCard extends StatelessWidget {
  const OrderSummaryProductCard({
    Key?key,
    required this.product,
    required this.quantity,
    
  }):super(key: key);
  final Product product;
final int quantity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: Row(
        children: [
          Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
            height: 80,
            width: 100,
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name),
              Text(
                  'Qty. $quantity',
                ),
    
              ],
            ),
          ),
           Expanded(
                    
            child: Text
              (                  
            'Rs.${product.price}',
              
              ),
             
            
          ),
        ],
      ),
    );
  }
}
