import 'package:flutter/material.dart';
import 'package:pettie_petstore/src/features/core/models/product/product_model.dart';

import 'package:pettie_petstore/src/features/core/screens/product/product_screen.dart';

import '../features/core/models/category_model/category_model.dart';



import '../features/core/screens/cart/cart.dart';
import '../features/core/screens/checkout/checkout_screen.dart';
import '../features/core/screens/screens.dart';


class AppRouter{
  static Route onGenerateRoute(
    RouteSettings settings){
    // ignore: avoid_print
    print("This is route: ${settings.name}");
    switch (settings.name){
      case'/': 
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
    default:
    return _errorRoute();
 
    
    }
  }
  static Route _errorRoute(){
      return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_)=> Scaffold(appBar: AppBar(title:const Text('Error'),),

       ) );
  }
}