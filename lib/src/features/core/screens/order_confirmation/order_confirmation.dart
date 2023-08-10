import 'package:flutter/material.dart';
import 'package:pettie_petstore/src/features/core/screens/widget/app_bar.dart';
import 'package:pettie_petstore/src/features/core/screens/widget/nav_bar.dart';

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
      appBar: const MyAppBar(title: 'Order confirmation'),
      bottomNavigationBar: const NavBar(screen: routeName) ,

      body: Container(),
    );
  }
}
