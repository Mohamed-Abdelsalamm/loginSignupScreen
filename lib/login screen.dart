import 'package:flutter/material.dart';
import 'package:login/buttons.dart';
import 'package:login/signupScreen.dart';
import 'package:login/textFormField.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.lightBlueAccent,
                    Colors.greenAccent,
                  ],
                ),
              ),
              child: Text(
                'Drawer',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 270,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.lightBlueAccent,
                          Colors.greenAccent,
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      drawerKey.currentState?.openDrawer();
                    },
                    icon: Icon(
                      Icons.menu,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.greenAccent,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFieldTemp(
                        hint: 'Email',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFieldTemp(hint: 'Password'),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Forgot Password ?',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.greenAccent,
                            ),
                          ),
                          Button(
                              name: 'Login',
                              height: 55,
                              function: () {
                                if (_formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('login successfully'),
                                    ),
                                  );
                                }
                              },
                              width: 160),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Button(
        name: 'Sign Up',
        height: 60,
        function: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SignUpScreen(),
            ),
          );
        },
      ),
    );
  }
}
