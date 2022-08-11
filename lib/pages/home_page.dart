import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My first application in flutter"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to oh no developement"),
        ),
      ),
        drawer: Drawer()
    );
  }
}
