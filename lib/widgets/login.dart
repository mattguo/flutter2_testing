import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play01/cubit/login_cubit.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(32),
        child: BlocProvider(
          create: (context) => LoginCubit(),
          child: BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) =>
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("BlocProvider inside widget, and wrap consumer in a BlocBuilder"),
              Text("${state.name}"),
              Text("${state.isLoading}"),
              Checkbox(
                  value: state.isLoading,
                  onChanged: (value) {
                    final cubit = context.read<LoginCubit>();
                    cubit.setLoading(value ?? false);
                  })
            ]),
          ),
        ));
  }
}
