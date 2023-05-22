import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;
  final bool isBestProduct;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isPopular,
    required this.isBestProduct,
    required this.isRecommended,
  });

  @override
  List<Object?> get props => [
        name,
        category,
        imageUrl,
        price,
        isPopular,
        isBestProduct,
        isRecommended,
      ];

  static List<Product> products = [
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
}
