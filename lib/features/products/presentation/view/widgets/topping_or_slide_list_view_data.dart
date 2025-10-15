
import 'package:flutter/material.dart';

import '../../../../../core/constans/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../shared/widgets/custom_text.dart';

class ToppingOrSlideListViewData extends StatelessWidget {
  const ToppingOrSlideListViewData({
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
