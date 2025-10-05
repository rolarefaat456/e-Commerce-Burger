import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../core/constans/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../../../core/constans/strings.dart';
import '../../../../core/widgets/custom_end.dart';
import 'widgets/cash_or_visa_btn.dart';
import 'widgets/checkout_data_row.dart';
import 'widgets/save_cart_box_check.dart';
import 'widgets/show_success_dialog.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        scrolledUnderElevation: 0,
      ),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Order summary',
                textStyle: AppTextStyle.style20w600(context),
              ),
              CheckoutDataRow(title: 'Order', subTitle: '\$16.48'),
              CheckoutDataRow(title: 'taxes', subTitle: '\$0.3'),
              CheckoutDataRow(title: 'Delivery fees', subTitle: '\$1.5'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Divider(height: 15),
              ),
              CheckoutDataRow(
                title: 'Total:',
                subTitle: '\$18.19',
                titleTextStyle: AppTextStyle.style14w600(context),
                subTitleTextStyle: AppTextStyle.style14w600(context),
              ),
              CheckoutDataRow(
                title: 'Estimated delivery time:',
                subTitle: '15 - 30 mins',
                titleTextStyle: AppTextStyle.style18w600(context),
                subTitleTextStyle: AppTextStyle.style18w700(context),
              ),
              Gap(60),
              CustomText(
                text: 'Payment methods',
                textStyle: AppTextStyle.style20w600(context),
              ),
              Gap(32),
              CashOrVisaContainer(
                image: Assets.imagesDoller,
                color: AppColors.darkRed,
                child: CustomText(
                  text: 'Cash on Delivery',
                  textStyle: AppTextStyle.style20w500(context),
                ),
              ),
              Gap(16),
              CashOrVisaContainer(
                image: Assets.imagesVisa,
                color: AppColors.darkWhite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Debit card',
                      textStyle: AppTextStyle.style14w500(
                        context,
                      ).copyWith(fontFamily: roboto),
                    ),
                    CustomText(
                      text: '3566 **** **** 0505',
                      textStyle: AppTextStyle.style14w500(
                        context,
                      ).copyWith(fontFamily: roboto, color: AppColors.darkGrey),
                    ),
                  ],
                ),
              ),
              Gap(16),
              SaveCartBoxCheckRow(),
              Gap(80),
              CustomEnd(
                text: 'close',
                title: 'Totla price',
                price: '\$18.19',
                onPressed: () => showSuccess(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
