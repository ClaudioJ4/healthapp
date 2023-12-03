// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Color.fromARGB(255, 40, 38, 40),
        child: ListView(
          children: [
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/iconapp.jpg"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Container(
              height: 40,
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        rememberMe = !rememberMe;
                      });
                    },
                    child: Row(
                      children: [
                        Icon(
                          rememberMe
                              ? Icons.check_box
                              : Icons.check_box_outline_blank,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Remember Me",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  InkWell(
                    onTap: () {
                      print("Forget Password clicado!");
                    },
                    child: Text(
                      "Forget Password",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            InkWell(
              onTap: () {
                // Adicione o código que deseja executar quando "Login" é clicado
                print("Login clicado!");
              },
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 74, 38, 137),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                // Adicione o código que deseja executar quando "Login" é clicado
                print("Google clicado!");
              },
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 223, 231, 232),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  "Login with Google",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      print("Cadastro clicado!");
                    },
                    child: Text(
                      "Sign up here",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 130, 86, 206),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*
InkWell(
              onTap: () {
                print("Cadastro clicado!");
              },
              child: Text(
                "Sign In",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            )
*/

/*
enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
*/