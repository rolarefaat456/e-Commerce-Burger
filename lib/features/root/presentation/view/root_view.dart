import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/constans/app_colors.dart';
import '../../../auth/presentation/view/profile_view.dart';
import '../../../cart/presentation/view/card_view.dart';
import '../../../home/presentation/view/home_view.dart';
import '../../../orderhistory/presentation/view/order_history_view.dart';

class RootView extends StatefulWidget {
  const RootView({super.key});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  late PageController controller;

  late List<Widget> screens;
  int currentScreen = 0;

  @override
  void initState() {
    screens = [HomeView(), CartView(), OrderHistoryView(), ProfileView()];
    controller = PageController(initialPage: currentScreen);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        physics: NeverScrollableScrollPhysics(),
        children: screens,
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.main,
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.all(8),
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() => currentScreen = index);
            controller.jumpToPage(currentScreen);
          },
          currentIndex: currentScreen,
          elevation: 0,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.white,
          unselectedItemColor: AppColors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart),
              label: 'cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_restaurant_sharp),
              label: 'order History',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled),
              label: 'profile',
            ),
          ],
        ),
      ),
    );
  }
}
