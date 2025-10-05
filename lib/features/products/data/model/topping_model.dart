import '../../../../core/utils/assets.dart';

class ToppingModel {
  final String image, toppingName;

  ToppingModel({required this.image, required this.toppingName});
}

List<ToppingModel> toppingData = [
  ToppingModel(image: Assets.imagesTomato, toppingName: 'Tomato'),
  ToppingModel(image: Assets.imagesOnion, toppingName: 'Onions'),
  ToppingModel(image: Assets.imagesPickles, toppingName: 'Pickles'),
  ToppingModel(image: Assets.imagesTurky, toppingName: 'Bacons')
];