import 'package:bloc/bloc.dart';

part 'cart_item_changing_state.dart';

class CartItemChangingCubit extends Cubit<CartItemChangingState> {
  CartItemChangingCubit() : super(CartItemChangingInitial());
  int count = 0;
  void removingItems(){
    emit(CartItemChangingRemoving(
      count: count--
    ));
  }
  void addingItems(){
    emit(CartItemChangingRemoving(
      count: count++
    ));
  }
}
