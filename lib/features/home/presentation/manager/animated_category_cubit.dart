import 'package:bloc/bloc.dart';

part 'animated_category_state.dart';

class AnimatedCategoryCubit extends Cubit<AnimatedCategoryState> {
  AnimatedCategoryCubit() : super(UnselectedCategory(selectedIndex: 0));

  void isSelectedCategory({required int index}) {
    if (state.selectedIndex == index) {
      emit(UnselectedCategory(selectedIndex: index));
    } else {
      emit(SelectedCategory(selectedIndex: index));
    }
  }
}
