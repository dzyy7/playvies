// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playvies/Widget/myButton.dart';
import 'package:playvies/Widget/myText.dart';
import 'package:playvies/Widget/myTextfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _adminPassword = 'admin';
  final _adminEmail = 'aulia@gmail.com';

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF795757), // Background color
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: myText(
                      text: "Hello",
                      style: TextStyle(
                          color: Color(0xFFFFF0D1),
                          fontWeight: FontWeight.bold,
                          fontSize: 32)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: myText(
                      text: "Sign in!",
                      style: TextStyle(color: Color(0xFFFFF0D1), fontSize: 24)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFFF0D1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        alignment:
                            Alignment.centerLeft, // Mengatur teks ke kiri
                      ),
                      MyTextField(
                        controller: _emailController,
                        labelText: 'Masukkan Email',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (value != _adminEmail) {
                            return 'Email tidak valid';
                          }
                          return null;
                        },
                      ),
                      MyTextField(
                        controller: _passwordController,
                        labelText: 'Masukkan Password',
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value != _adminPassword) {
                            return 'Password tidak valid';
                          }
                          return null;
                        },
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: myText(
                              text: "Forgot password",
                              style: TextStyle(color: Color(0xFF3B3030)))),
                      const SizedBox(height: 32),
                      MyButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Get.snackbar(
                                'Success',
                                'Login successful',
                                snackPosition: SnackPosition.TOP,
                              );
                            }
                          },
                          text: "Login",
                          width: 450),
                      SizedBox(height: 50),
                      Align(
                          alignment: Alignment.centerRight,
                          child: myText(
                              text: "Don\'t have an account?",
                              style: TextStyle(color: Color(0xFF3B3030)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: myText(
                            text: "Sign Up",
                            style: TextStyle(
                                color: Color(0xFF3B3030),
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
