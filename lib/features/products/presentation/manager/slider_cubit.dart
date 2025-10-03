import 'package:bloc/bloc.dart';

part 'slider_state.dart';

class SliderCubit extends Cubit<SliderState> {
  SliderCubit() : super(SliderInitial());
  double changing = 0;
  void onChangeSlider(double change) {
    changing = change;
    emit(SliderChanging(changing: change));
  }
}
