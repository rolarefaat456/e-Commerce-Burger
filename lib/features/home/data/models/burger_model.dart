import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry/core/utils/assets.dart';

class BurgerModel {
  final String image, title, subTitle, rate;
  final IconData icon;

  BurgerModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.rate,
    required this.icon,
  });
}

List<BurgerModel> burgerList = [
  BurgerModel(
    image: Assets.imagesCheeseBurger,
    title: 'Cheeseburger',
    subTitle: "Wendy's Burger",
    rate: '4.9',
    icon: Icons.star,
  ),
  BurgerModel(
    image: Assets.imagesBurgerBackGround,
    title: 'Hamburger',
    subTitle: "Veggie Burger",
    rate: '4.8',
    icon: Icons.star,
  ),
  BurgerModel(
    image: Assets.imagesHamburger,
    title: 'Hamburger',
    subTitle: "Chicken Burger",
    rate: '4.6',
    icon: Icons.star,
  ),
  BurgerModel(
    image: Assets.imagesCheckinBuger,
    title: 'Hamburger',
    subTitle: "Fried Chicken Burger",
    rate: '4.5',
    icon: Icons.star,
  ),
  BurgerModel(
    image: Assets.imagesCheckinBuger,
    title: 'Hamburger',
    subTitle: "Fried Chicken Burger",
    rate: '4.5',
    icon: Icons.star,
  ),
  BurgerModel(
    image: Assets.imagesCheckinBuger,
    title: 'Hamburger',
    subTitle: "Fried Chicken Burger",
    rate: '4.5',
    icon: Icons.star,
  ),
  BurgerModel(
    image: Assets.imagesCheckinBuger,
    title: 'Hamburger',
    subTitle: "Fried Chicken Burger",
    rate: '4.5',
    icon: Icons.star,
  ),
  BurgerModel(
    image: Assets.imagesCheckinBuger,
    title: 'Hamburger',
    subTitle: "Fried Chicken Burger",
    rate: '4.5',
    icon: Icons.star,
  ),
  BurgerModel(
    image: Assets.imagesCheckinBuger,
    title: 'Hamburger',
    subTitle: "Fried Chicken Burger",
    rate: '4.5',
    icon: Icons.star,
  ),
  BurgerModel(
    image: Assets.imagesCheckinBuger,
    title: 'Hamburger',
    subTitle: "Fried Chicken Burger",
    rate: '4.5',
    icon: Icons.star,
  ),
];
