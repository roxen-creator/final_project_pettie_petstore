
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final int price;
  final bool isRecommended;
  final bool isPopular;
  final bool isBestProduct;

  // ignore: prefer_typing_uninitialized_variables
  static var products;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isPopular,
    required this.isBestProduct,
    required this.isRecommended,
  });
static Product fromSnapshot(DocumentSnapshot snap) {
  Product product = Product(name: snap['name'], category: snap['category'], imageUrl: snap['imageUrl'], price: snap['price'], isPopular: snap['isPopular'], isBestProduct: snap['isBestProduct'], isRecommended: snap['isRecommended']);
  return product;
}
  @override
  List<Object> get props => [
        name,
        category,
        imageUrl,
        price,
        isPopular,
        isBestProduct,
        isRecommended,
      ];









    
}
