import 'package:hungry/core/utils/assets.dart';

class SlideOptionsModel {
  final String image, toppingName;

  SlideOptionsModel({required this.image, required this.toppingName});
}

List<SlideOptionsModel> sideData = [
  SlideOptionsModel(image: Assets.imagesFries, toppingName: 'Tomato'),
  SlideOptionsModel(image: Assets.imagesColeslaw, toppingName: 'Onions'),
  SlideOptionsModel(image: Assets.imagesSalad, toppingName: 'Pickles'),
  SlideOptionsModel(image: Assets.imagesCrespyOnion, toppingName: 'Bacons')
];