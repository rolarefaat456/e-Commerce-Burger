part of 'slider_cubit.dart';

abstract class SliderState {}

class SliderInitial extends SliderState {
}
class SliderChanging extends SliderState {
  final double changing;

  SliderChanging({required this.changing});
}
