import 'package:flutter/material.dart';
import 'package:perfect_eggs/blocs/app.bloc.dart';
import 'package:perfect_eggs/pages/widgets/action-buttons.widget.dart';
import 'package:perfect_eggs/pages/widgets/type-buttons.widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Text(bloc.selected),
            Text(bloc.state),
            Text(bloc.time.toString()),
            Text(bloc.seconds.toString()),
            SizedBox(
              height: 60,
            ),
            TypeButtons(),
            SizedBox(
              height: 10,
            ),
            ActionButtons(),
          ],
        ),
      ),
    );
  }
}
