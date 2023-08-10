import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/cart/cart_bloc.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if(state is CartLoading){
          return(const Center(child: CircularProgressIndicator(),));
        }
        
        if(state is CartLoaded){
         return Column(
          children: [
            const Divider(
              thickness: 2,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('SUBTOTAL',
                          style: Theme.of(context).textTheme.displaySmall),
                      Text('Rs.${state.cart.subtotalString}',
                          style: Theme.of(context).textTheme.displaySmall),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('DELIVERY FREE',
                          style: Theme.of(context).textTheme.displaySmall),
                      Text('Rs${state.cart.deliveryfeeString}',
                          style: Theme.of(context).textTheme.displaySmall),
                    ],
                  ),
                ],
              ),
            ),
            //create  
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  margin: const EdgeInsets.all(5.0),
                  decoration: const BoxDecoration(color: Colors.black),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('TOTAL',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(color: Colors.white)),
                        Text('Rs.${state.cart.totalString}',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        );
        }else{
          return const Text('Something went wrong');
        }
        
      },
    );
  }
}
