import 'package:flutter/material.dart';
import 'package:perfect_eggs/pages/home.page.dart';

class SplashPage extends StatelessWidget {
  Future delay(context) async {
    await new Future.delayed(
        new Duration(
          milliseconds: 3000,
        ), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    //delay(context);
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}
