import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:pettie_petstore/src/features/core/models/product/product_model.dart';
import '../../features/core/models/wishlist/wishlist_model.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistLoading()){
    on<LoadWishlist>(_onLoadWishlist);
    on<AddProductToWishlist>(_onAddProductToWishList);
    on<RemoveProductFromWishlist>(_onRemoveProductFromWishlist);
  }
void _onLoadWishlist(event, Emitter<WishlistState> emit)async{
  emit( WishlistLoading());
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      emit (const WishlistLoaded());
    }catch(_){
    emit(WishlistError());
  }
}
void _onAddProductToWishList(event, Emitter<WishlistState> emit){
 
 final state = this.state;
 if (state is WishlistLoaded) {
      try {
       emit( WishlistLoaded(
          wishlist: Wishlist(
            products: List.from(state.wishlist.products)..add(event.product),
          ),
        ) ,);
      } on Exception {
        emit (WishlistError());
        
      }
    }
}
void _onRemoveProductFromWishlist(event, Emitter<WishlistState> emit){
   final state = this.state;
 if (state is WishlistLoaded) {
      try {
       emit( WishlistLoaded(
          wishlist: Wishlist(
            products: List.from(state.wishlist.products)..remove(event.product),
          ),
        ) ,);
      } on Exception {
        emit (WishlistError());
        
      }
    }
}

}