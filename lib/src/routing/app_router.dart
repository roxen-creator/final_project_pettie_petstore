import 'package:flutter/material.dart';

import 'package:pettie_petstore/src/features/core/models/product/product_model.dart';
import 'package:pettie_petstore/src/features/core/screens/order_confirmation/order_confirmation.dart';
import 'package:pettie_petstore/src/features/core/screens/payment_selection/payment_selection.dart';

import '../features/core/models/category_model/category_model.dart';
import '../features/core/screens/checkout/checkout_screen.dart';
import '../features/core/screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    // ignore: avoid_print
    print("This is route: ${settings.name}");
    switch (settings.name) {
      case '/':
        return Dashboard.route();
      case Cart.routeName:
        return Cart.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case Wishlist.routeName:
        return Wishlist.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      case CheckoutScreen.routeName:
        return CheckoutScreen.route();
      case OrderConfirmation.routeName:
        return OrderConfirmation.route();
      case PaymentSelection.routeName:
        return PaymentSelection.route();
        case ProfileScreen.routeName:
        return ProfileScreen.route();



      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('Error'),
              ),
            ));
  }
}
