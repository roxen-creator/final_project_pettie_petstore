import '../../features/core/models/checkout_model/checkout_model.dart';

abstract class BaseCheckoutRepository{
  Future<void> addCheckout(Checkout checkout);
  
}