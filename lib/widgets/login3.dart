import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:play01/provider/textlog.dart';

class Login3PageWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TextLog>(
        create: (context) => TextLog(), child: Login3Page());
  }
}

class Login3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _log = Provider.of<TextLog>(context);
    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("BlocProvider outside widget, and get cubit from context.watch"),
        Text("${_log.label}"),
        Text("${_log.flag}"),
        Checkbox(
            value: _log.flag,
            onChanged: (value) {
              _log.setFlag(value ?? false);
            })
      ]),
    );
  }
}
