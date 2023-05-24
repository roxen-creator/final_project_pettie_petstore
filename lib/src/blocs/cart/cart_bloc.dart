import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../features/core/models/cart_model/cart_model.dart';
import '../../features/core/models/product/product_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartLoading()){
    on<LoadCart> (_onLoadCart);
    on<RemoveProduct> (_onRemoveProduct);
    on<AddProduct>(_onAddProduct);
  }

void _onLoadCart(event, Emitter<CartState>emit)async{
  emit (CartLoading());
  try{
    await Future<void>.delayed(const Duration(seconds: 1));
    emit( const CartLoaded());
  }catch(_){
    emit(CartError());
  }

}
void _onRemoveProduct(event, Emitter<CartState>emit){
  final state = this.state;
  if(state is CartLoaded){
    try{
      emit( CartLoaded(
        cartmodel: CartModel(
        products: List.from(state.cartmodel.products)..remove(event.product),),));
    }on Exception{
      emit(CartError());
    }
  }
}

void _onAddProduct(event, Emitter<CartState>emit){
  final state = this.state;
  if(state is CartLoaded){
    try{
      emit( CartLoaded(
        cartmodel: CartModel(
        products: List.from(state.cartmodel.products)..add(event.product),),),);
    }on Exception{
      emit(CartError());
    }
  }
}
}



