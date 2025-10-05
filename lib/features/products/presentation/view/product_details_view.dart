import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constans/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/custom_end.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../data/model/slide_options_model.dart';
import '../../data/model/topping_model.dart';
import 'widgets/product_details_header.dart';
import 'widgets/topping_or_slide_list_view.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.darkWhite, elevation: 0),
      backgroundColor: AppColors.darkWhite,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductDetailsHeader(),
                Gap(8),
                CustomText(
                  text: 'Toppings',
                  textStyle: AppTextStyle.style16w600(context),
                ),
                ToppingOrSildeListView(list: toppingData, color: Colors.red),
                Gap(8),
                CustomText(
                  text: 'Side options',
                  textStyle: AppTextStyle.style16w600(context),
                ),
                ToppingOrSildeListView(list: sideData, color: AppColors.main),
                CustomEnd(title: 'Total', text: 'Add To Cart', price: '\$18.19', onPressed: () {  },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
