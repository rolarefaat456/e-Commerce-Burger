
import 'package:flutter/material.dart';

import 'topping_or_slide_list_view_data.dart';

class ToppingOrSildeListView extends StatelessWidget {
  const ToppingOrSildeListView({
    super.key,
    required this.list,
    required this.color,
  });
  final List list;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.heightOf(context) / 4.6,
      // width: MediaQuery.widthOf(context) / 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ToppingOrSlideListViewData(
            image: list[index].image,
            toppingName: list[index].toppingName,
            color: color,
          );
        },
      ),
    );
  }
}
