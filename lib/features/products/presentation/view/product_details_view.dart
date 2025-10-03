import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constans/app_colors.dart';
import 'package:hungry/core/utils/app_text_styles.dart';
import 'package:hungry/core/widgets/custom_text.dart';
import 'package:hungry/features/products/data/model/topping_model.dart';
import '../../data/model/slide_options_model.dart';
import 'widgets/product_details_header.dart';

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
                ListTile(
                  title: CustomText(
                    text: 'Total',
                    textStyle: AppTextStyle.style18w600(context),
                  ),
                  subtitle: CustomText(
                    text: '\$18.19',
                    textStyle: AppTextStyle.style32w400(context),
                  ),
                  trailing: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.main,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(16),
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 16,
                      ),
                      child: CustomText(
                        text: 'Add To Cart',
                        textStyle: AppTextStyle.style18w600(
                          context,
                        ).copyWith(color: AppColors.white, fontFamily: 'Inter'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
          return ToppindSliverListData(
            image: list[index].image,
            toppingName: list[index].toppingName,
            color: color,
          );
        },
      ),
    );
  }
}

class ToppindSliverListData extends StatelessWidget {
  const ToppindSliverListData({
    super.key,
    required this.image,
    required this.toppingName,
    required this.color,
  });
  final String image, toppingName;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.widthOf(context) / 2.5,
      decoration: BoxDecoration(
        color: AppColors.darkRed,
        borderRadius: BorderRadius.circular(16),
      ),
      margin: EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.white,
            ),
            padding: EdgeInsets.all(16),
            child: Image.asset(
              image,
              height: MediaQuery.heightOf(context) / 9,
              width: MediaQuery.widthOf(context) / 3,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: toppingName,
                    textStyle: AppTextStyle.style12w500(context),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: color,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(8),
                    ),
                    onPressed: () {},
                    child: Icon(Icons.add, color: AppColors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
