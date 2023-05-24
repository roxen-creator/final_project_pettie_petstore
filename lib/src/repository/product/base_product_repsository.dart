import 'package:pettie_petstore/src/features/core/models/product/product_model.dart';

abstract class BaseProductRepository{
  Stream<List<Product>> getAllProducts();
}