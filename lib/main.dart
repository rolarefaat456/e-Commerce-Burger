import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:hungry/core/functions/on_generate_route.dart';
import 'core/constans/routes.dart';

void main() {
  runApp(DevicePreview(enabled: false, builder: (context) => Hungry()));
}

class Hungry extends StatelessWidget {
  const Hungry({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: Routes.splashRoute,
    );
  }
}
