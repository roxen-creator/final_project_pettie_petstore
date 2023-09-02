import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:pettie_petstore/src/features/core/screens/widget/app_bar.dart';
import 'package:pettie_petstore/src/features/core/screens/widget/nav_bar.dart';
import 'package:pettie_petstore/src/features/core/screens/widget/order_summary.dart';

class OrderConfirmation extends StatelessWidget {
  static const String routeName = '/order-confirmation';

  const OrderConfirmation({super.key});
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const OrderConfirmation(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Order Confirmation'),
      bottomNavigationBar: const NavBar(screen: routeName),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(children: [
            Container(
              color: Colors.black,
              width: double.infinity,
              height: 300,
            ),
            Positioned(
              left: (MediaQuery.of(context).size.width - 100) / 2,
              top: 125,
              child: SvgPicture.asset('assets/svg/garlands.svg'),
            ),
            Positioned(
              top: 250,
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Your order is complete',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ORDER CODE: #2203-3223',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 10),
                Text(
                  'Thank you for purchasing on Pettie.',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 20),
                Text(
                  'ORDER CODE: #2203-3223',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const OrderSummary(),
                const SizedBox(height: 20),
                Text(
                  'ORDER DETAILS',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const Divider(thickness: 2),
                const SizedBox(height: 5),
                ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
