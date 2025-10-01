part of 'animated_category_cubit.dart';

abstract class AnimatedCategoryState {
  final int selectedIndex;

  AnimatedCategoryState({required this.selectedIndex});
}

class AnimatedCategoryInitial extends AnimatedCategoryState {
  AnimatedCategoryInitial({ required super.selectedIndex});
}
class SelectedCategory extends AnimatedCategoryState {
  SelectedCategory({ required super.selectedIndex});
}
class UnselectedCategory extends AnimatedCategoryState {
  UnselectedCategory({ required super.selectedIndex});
}


