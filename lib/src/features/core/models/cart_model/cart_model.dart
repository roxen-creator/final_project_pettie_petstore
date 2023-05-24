import 'package:equatable/equatable.dart';


import '../product/product_model.dart';

// ignore: must_be_immutable
class CartModel extends Equatable{
  final List<Product> products;
 const CartModel({this.products = const <Product>[]});

 @override
 
  List<Object?> get props =>[products] ;

Map productQuantity(products){
var quantity = {};

products.forEach((product){
if(!quantity.containsKey(product)){
  quantity[product] =1;
}
else {quantity[product]+=1;
}

});
return quantity;
}


 double get subtotal =>
      products.fold(0, (total, current) => total + current.price);
      
      double deliveryFee(subtotal) {
    if (subtotal >= 4000.0) {
      return 0.0;
    } else {
      return 100.0;
    }
  }
   double total(subtotal, deliveryFee) {
    return subtotal + deliveryFee(subtotal);
  }
 String freeDelivery(subtotal) {
    if (subtotal >= 4000.0) {
      return 'You have Free Delivery';
    } else {
      double missing = 4000.0 - subtotal;
      return 'Add Rs.${missing.toStringAsFixed(2)} for FREE Delivery';
    }
  }
  
String get subtotalString=> subtotal.toStringAsFixed(2);
String get totalString=> total(subtotal, deliveryFee).toStringAsFixed(2);
String get deliveryfeeString=> deliveryFee(subtotal).toStringAsFixed(2);

String get freeDeliveryString=>freeDelivery(subtotal);

 

}
