import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pettie_petstore/src/features/core/models/category_model/category_model.dart';
import 'package:pettie_petstore/src/repository/category/base_category_repository.dart';

class CategoryRepository extends BaseCategoryRepository {
  final FirebaseFirestore _firebaseFirestore;

  CategoryRepository({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
    Stream<List<Category>> getAllCategories() {
    return _firebaseFirestore.collection('categories').snapshots().map((snapshot){
      return snapshot.docs.map((doc)=>Category.fromSnapshot(doc)).toList();
    });
  

    }

}


