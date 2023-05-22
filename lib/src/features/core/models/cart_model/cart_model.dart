import 'package:equatable/equatable.dart';

import '../product/product_model.dart';

// ignore: must_be_immutable
class CartModel extends Equatable{
 CartModel();
 double get subtotal =>
      products.fold(0, (total, current) => total + current.price);
      
      double deliveryFee(subtotal) {
    if (subtotal >= 30.0) {
      return 0.0;
    } else {
      return 10.0;
    }
  }
   double total(subtotal, deliveryFee) {
    return subtotal + deliveryFee(subtotal);
  }
 String freeDelivery(subtotal) {
    if (subtotal >= 400.0) {
      return 'You have Free Delivery';
    } else {
      double missing = 2000.0 - subtotal;
      return 'Add \$${missing.toStringAsFixed(2)} for FREE Delivery';
    }
  }
  
String get subtotalString=> subtotal.toStringAsFixed(2);
String get totalString=> total(subtotal, deliveryFee).toStringAsFixed(2);
String get deliveryfeeString=> deliveryFee(subtotal).toStringAsFixed(2);

String get freeDeliveryString=>freeDelivery(subtotal);
List<Product> products = [
     const Product(
      name: 'Dog taorg',
      category: 'Dog Food',
      imageUrl:
          'https://images.unsplash.com/photo-1554079500-a359614b7666?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1089&q=80',
      price: 500.0,
      isPopular: false,
      isBestProduct: true,
      isRecommended: true,
    ),
     const Product(
      name: 'Dog taorg',
      category: 'Dog Food',
      imageUrl:
          'https://images.unsplash.com/photo-1554079500-a359614b7666?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1089&q=80',
      price: 500.0,
      isPopular: false,
      isBestProduct: true,
      isRecommended: true,
    ),
       const Product(
      name: 'Dog taorg',
      category: 'Dog Food',
      imageUrl:
          'https://images.unsplash.com/photo-1554079500-a359614b7666?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1089&q=80',
      price: 500.0,
      isPopular: false,
      isBestProduct: true,
      isRecommended: true,
    ),

    const Product(
        name: 'dooed',
        category: 'Cat Food',
        imageUrl:
            'https://images.unsplash.com/photo-1554079500-a359614b7666?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1089&q=80',
        price: 500.0,
        isPopular: true,
        isBestProduct: true,
        isRecommended: true,),
    const Product(
        name: 'Dog t',
        category: 'Dog supplies',
        imageUrl:
            'https://images.unsplash.com/photo-1554079500-a359614b7666?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1089&q=80',
        price: 500.0,
        isPopular: false,
        isBestProduct: true,
        isRecommended: true),
    const Product(
        name: 'Dog F',
        category: 'Dog Food',
        imageUrl:
            'https://images.unsplash.com/photo-1554079500-a359614b7666?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1089&q=80',
        price: 500.0,
        isPopular: true,
        isBestProduct: true,
        isRecommended: true),
    const Product(
        name: 'Cat tag',
        category: 'Cat supplies',
        imageUrl:
            'https://images.unsplash.com/photo-1554079500-a359614b7666?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1089&q=80',
        price: 500.0,
        isPopular: true,
        isBestProduct: true,
        isRecommended: true),
  ];
  @override
 
  List<Object?> get props =>[] ;

}
