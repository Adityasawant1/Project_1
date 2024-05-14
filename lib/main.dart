import 'package:flutter/material.dart';
import 'package:gamify_app/Home_page.dart';
import 'package:gamify_app/Pages/Login_page.dart';
import 'package:gamify_app/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Catalog app",
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => Home_page(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
