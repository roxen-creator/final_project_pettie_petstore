import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pettie_petstore/src/features/core/models/checkout_model/checkout_model.dart';
import 'package:pettie_petstore/src/repository/checkout_repository/base_checkout_repository.dart';

class CheckoutRepository extends BaseCheckoutRepository {
  final FirebaseFirestore _firebaseFirestore;

  CheckoutRepository({
    FirebaseFirestore? firebaseFirestore,
  }) : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
  Future<void> addCheckout(Checkout checkout) {
    return _firebaseFirestore.collection('checkout').add(checkout.toDocument());
  }
}