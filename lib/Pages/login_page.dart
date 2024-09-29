import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playvies/Controllers/login_controller.dart';
import 'package:playvies/Widget/myButton.dart';
import 'package:playvies/Widget/myText.dart';
import 'package:playvies/Widget/myTextfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find();

    return Scaffold(
      backgroundColor: const Color(0xFF1E5128),
      body: Column(
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: myText(
                      text: "Hello",
                      style: TextStyle(
                          color: Color(0xFFD8E9A8),
                          fontWeight: FontWeight.bold,
                          fontSize: 32)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: myText(
                      text: "Please Login!",
                      style: TextStyle(color: Color(0xFFD8E9A8), fontSize: 24)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFD8E9A8),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      MyTextField(
                        controller: controller.usernameController,
                        labelText: 'Masukkan Email',
                      ),
                      MyTextField(
                        controller: controller.passwordController,
                        labelText: 'Masukkan Password',
                        obscureText: true,
                      ),
                      const Align(
                          alignment: Alignment.centerRight,
                          child: myText(
                              text: "Forgot password",
                              style: TextStyle(color: Color(0xFF191A19)))),
                      const SizedBox(height: 32),
                      MyButton(
                          onPressed: controller.login,
                          text: "Login",
                          width: 450),
                      const Spacer(),
                      const Align(
                          alignment: Alignment.centerRight,
                          child: myText(
                              text: "Don't have an account?",
                              style: TextStyle(color: Color(0xFF191A19)))),
                      const Align(
                          alignment: Alignment.centerRight,
                          child: myText(
                            text: "Sign Up",
                            style: TextStyle(
                                color: Color(0xFF191A19),
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
