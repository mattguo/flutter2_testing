import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState.initial("Hello", false));

  void setLoading(bool isLoading) {
    var newState = state.copyWith(name: state.name + ":x", isLoading: isLoading);
    emit(newState);
  }
}
