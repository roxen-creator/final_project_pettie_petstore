import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String id;
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  // ignore: prefer_typing_uninitialized_variables
  static var products;

  const Product({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isPopular,
    required this.isRecommended,
  });
  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
        id: snap.id,
        name: snap['name'],
        category: snap['category'],
        imageUrl: snap['imageUrl'],
        price: snap['price'],
        isPopular: snap['isPopular'],
        isRecommended: snap['isRecommended']);
    return product;
  }

  @override
  List<Object> get props => [
        id,
        name,
        category,
        imageUrl,
        price,
        isPopular,
        isRecommended,
      ];
}
