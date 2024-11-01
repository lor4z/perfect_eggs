import 'package:flutter/material.dart';
import 'package:perfect_eggs/blocs/app.bloc.dart';
import 'package:perfect_eggs/pages/widgets/action-buttons.widget.dart';
import 'package:perfect_eggs/pages/widgets/eggs.widget.dart';
import 'package:perfect_eggs/pages/widgets/progress.widget.dart';
import 'package:perfect_eggs/pages/widgets/type-buttons.widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text(
              "Perfect Eggs",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Eggs(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TypeButtons(),
            ),
            SizedBox(
              height: 10,
            ),
            Progress(),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: ActionButtons(),
            )
          ],
        ),
      ),
    );
  }
}
