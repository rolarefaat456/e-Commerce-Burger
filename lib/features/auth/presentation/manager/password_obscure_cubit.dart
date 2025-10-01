import 'package:bloc/bloc.dart';
part 'password_obscure_state.dart';

class PasswordObscureCubit extends Cubit<PasswordObscureState> {
  PasswordObscureCubit() : super(PasswordObscureInitial());
  bool isObscure = false;
  void toggleObscure() {
    isObscure = !isObscure;
    if (isObscure) {
      emit(PasswordFalseObscureState());
    } else {
      emit(PasswordTrueObscureState());
    }
  }
}
