import '../../../../core/utils/assets.dart';

class CartModel {
  final String image, title, subTitle;
  final int count;

  CartModel({required this.image, required this.title,required this.subTitle, required this.count}); 
}

List<CartModel> cartItems = [
CartModel(image: Assets.imagesCheckinBuger, title: 'Hamburger', subTitle: ' Veggie Burger', count: 2, ),
CartModel(image: Assets.imagesCheckinBuger, title: 'Hamburger', subTitle: ' Veggie Burger', count: 2, ),
CartModel(image: Assets.imagesCheckinBuger, title: 'Hamburger', subTitle: ' Veggie Burger', count: 2, ),
CartModel(image: Assets.imagesCheckinBuger, title: 'Hamburger', subTitle: ' Veggie Burger', count: 2, ),
CartModel(image: Assets.imagesCheckinBuger, title: 'Hamburger', subTitle: ' Veggie Burger', count: 2, ),
CartModel(image: Assets.imagesCheckinBuger, title: 'Hamburger', subTitle: ' Veggie Burger', count: 2, ),
];