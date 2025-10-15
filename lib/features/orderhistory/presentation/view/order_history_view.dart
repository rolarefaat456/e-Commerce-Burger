import 'package:flutter/material.dart';
import '../../../../core/constans/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../shared/widgets/custom_btn.dart';
import '../../../../shared/widgets/custom_text.dart';
import '../../../cart/data/model/cart_model.dart';

class OrderHistoryView extends StatelessWidget {
  const OrderHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkWhite,
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: cartItems.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(8),
              color: AppColors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Image.asset(cartItems[index].image),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              CustomText(
                                text: cartItems[index].title,
                                textStyle: AppTextStyle.style16w600(context),
                              ),
                              CustomText(
                                text: 'Qty: X5',
                                textStyle: AppTextStyle.style16w500(
                                  context,
                                ).copyWith(color: AppColors.darkRed),
                              ),
                              CustomText(
                                text: 'price 20\$',
                                textStyle: AppTextStyle.style16w500(
                                  context,
                                ).copyWith(color: AppColors.darkRed),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: CustomBtn(text: 'Re Order', onPressed: () {}),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
