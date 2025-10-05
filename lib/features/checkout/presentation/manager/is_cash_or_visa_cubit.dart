import 'package:bloc/bloc.dart';

part 'is_cash_or_visa_state.dart';

class IsCashOrVisaCubit extends Cubit<IsCashOndeliveryState> {
  IsCashOrVisaCubit() : super(IsCashOndeliveryInitial());
  bool isSelected = false;
  void isSelecteDelivery() {
    isSelected = !isSelected;
    emit(IsCashOndeliverySelected());
  }
}
