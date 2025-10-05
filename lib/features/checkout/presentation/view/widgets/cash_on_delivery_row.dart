import 'package:flutter/material.dart';
import 'is_select_delivery_or_visa.dart';

class CashOrVisaRow extends StatelessWidget {
  const CashOrVisaRow({super.key, required this.image, required this.child});
  final String image;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        Expanded(child: Image.asset(image)),
        Expanded(flex: 3, child: child),
        Expanded(child: IsSelectDeliveryOrVisa()),
      ],
    );
  }
}
