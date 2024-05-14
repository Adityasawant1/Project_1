import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  final int days = 30;
  final String name = "Aditya";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Catalog app",
          ),
          backgroundColor: Colors.purple.shade200,
        ),
        body: Center(child: Container(child: Text("This is a box"))),
        drawer: Drawer());
  }
}
