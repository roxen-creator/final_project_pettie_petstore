part of 'cart_bloc.dart';

abstract class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

class CartLoading extends CartState {
  @override
  List<Object> get props => [];
}

class CartLoaded extends CartState {
  final CartModel cartmodel;

  const CartLoaded({this.cartmodel =  const CartModel()});

  
  @override
  List<Object> get props => [cartmodel];
}

class CartError extends CartState {
  @override
  List<Object> get props => [];
}
