import 'package:flutter/material.dart';
import 'package:pettie_petstore/src/features/core/models/product/product_model.dart';



import '../widget/app_bar.dart';
import '../widget/cart_product_card.dart';

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
                  onPressed: () {},
                  child: Text(
                    'GO TO CHECKOUT',
                    style: Theme.of(context).textTheme.displaySmall,
                  ))
            ],
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ' Add Rs.400 for Free Delivery',
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
                            .apply(fontSizeFactor: 0.7, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
              height: 10,
            ),
            CartProductCard(
              product: Product.products[0],
            ),
            CartProductCard(
              product: Product.products[1],
            ),
              ],
            ),

         
          Column(children: [
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
                      Text('Rs.88.50',
                          style: Theme.of(context).textTheme.displaySmall),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('DELIVERY FREE',
                          style: Theme.of(context).textTheme.displaySmall),
                      Text('Rs.88.50',
                          style: Theme.of(context).textTheme.displaySmall),
                    ],
                  ),
                ],
              ),
            ),
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
                        Text('Rs.88.50',
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
          ],),
          
          
            
          ],
        ),
      ),
    );
  }
}