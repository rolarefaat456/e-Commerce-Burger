import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class HeaderIconsWidget extends StatelessWidget {
  const HeaderIconsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 28),
          child: Image.asset(Assets.imagesCold),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 28),
          child: Image.asset(Assets.imagesHot),
        ),
      ],
    );
  }
}

