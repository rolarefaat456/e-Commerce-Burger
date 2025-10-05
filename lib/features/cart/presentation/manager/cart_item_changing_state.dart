part of 'cart_item_changing_cubit.dart';

abstract class CartItemChangingState {}

class CartItemChangingInitial extends CartItemChangingState {}
class CartItemChangingAdding extends CartItemChangingState {
  final int count;

  CartItemChangingAdding({required this.count});
}
class CartItemChangingRemoving extends CartItemChangingState {
    final int count;

  CartItemChangingRemoving({required this.count});
}


