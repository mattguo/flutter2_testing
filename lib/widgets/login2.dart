import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play01/cubit/login_cubit.dart';

class Login2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _loginCubit = context.watch<LoginCubit>();
    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("BlocProvider outside widget, and get cubit from context.watch"),
        Text("${_loginCubit.state.name}"),
        Text("${_loginCubit.state.isLoading}"),
        Checkbox(
            value: _loginCubit.state.isLoading,
            onChanged: (value) {
              _loginCubit.setLoading(value ?? false);
            })
      ]),
    );
  }
}
