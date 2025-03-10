import 'package:flutter/material.dart';
import 'package:perfect_eggs/blocs/app.bloc.dart';
import 'package:perfect_eggs/pages/widgets/button.widget.dart';
import 'package:provider/provider.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);
    switch (bloc.state) {
      case "stopped":
        return Button(
          label: "START",
          selected: true,
          callback: bloc.start, // Referência ao método
        );
      case "cooking":
        return Button(
          label: "STOP",
          selected: true,
          callback: bloc.stop, // Referência ao método
        );
      case "done":
        return Button(
          label: "ALL DONE",
          selected: true,
          callback: bloc.reset, // Referência ao método
        );
      default:
        return Button(
          label: "START",
          selected: true,
          callback: bloc.start, // Referência ao método
        );
    }
  }
}
