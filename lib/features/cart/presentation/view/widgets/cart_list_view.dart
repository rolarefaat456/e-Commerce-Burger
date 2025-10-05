import 'package:flutter/material.dart';

import '../../../data/model/cart_model.dart';
import 'cart_list_view_data.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cartItems.length,
      itemBuilder: (context, index) {
        return CartListViewDate(
          image: cartItems[index].image,
          title: cartItems[index].title,
          subTitle: cartItems[index].subTitle,
        );
      },
    );
  }
}
