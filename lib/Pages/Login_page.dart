import 'package:flutter/material.dart';
import 'package:gamify_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changename = false;
  final _formKey = GlobalKey<FormState>();

  movetoHome(BuildContext context) async {
    setState(() {
      changename = true;
    });
    await Future.delayed(Duration(seconds: 2));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changename = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/Images/LoginHey.png",
                fit: BoxFit.cover,
                height: 200,
                width: 300,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 18.0, horizontal: 36.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Username",
                        hintText: "Enter your Name",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter password",
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 40),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(changename ? 20 : 8),
                      child: InkWell(
                        splashColor: Colors.red,
                        onTap: () {
                          if (_formKey.currentState.validate()) {
                            movetoHome(context);
                          }
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 50,
                          width: changename ? 50 : 150,
                          alignment: Alignment.center,
                          child: changename
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
