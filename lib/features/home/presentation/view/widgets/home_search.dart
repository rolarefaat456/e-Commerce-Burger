
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constans/app_colors.dart';
import 'seach.dart';

class HomeSeach extends StatelessWidget {
  const HomeSeach({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      shadowColor: AppColors.grey,
      borderRadius: BorderRadius.circular(12),
      child: TextField(
        readOnly: true,
        onTap: () =>
            showSearch(context: context, delegate: Search()),
        decoration: InputDecoration(
          prefixIcon: Icon(CupertinoIcons.search),
          hintText: 'Search...',
          fillColor: AppColors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
