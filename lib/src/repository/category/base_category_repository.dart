import 'package:pettie_petstore/src/features/core/models/category_model/category_model.dart';

abstract class BaseCategoryRepository{
  Stream<List<Category>> getAllCategories();
}