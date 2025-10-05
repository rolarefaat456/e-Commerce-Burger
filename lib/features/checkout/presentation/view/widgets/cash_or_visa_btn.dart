import 'package:flutter/material.dart';
import 'cash_on_delivery_row.dart';

class CashOrVisaContainer extends StatelessWidget {
  const CashOrVisaContainer({
    super.key,
    required this.image,
    required this.color,
    required this.child,
  });
  final String image;
  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: CashOrVisaRow(image: image, child: child),
    );
  }
}
