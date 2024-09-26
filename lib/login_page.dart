import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playvies/Controllers/login_controller.dart';
import 'package:playvies/Widget/myButton.dart';
import 'package:playvies/Widget/myText.dart';
import 'package:playvies/Widget/myTextfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());

    return Scaffold(
      backgroundColor: const Color(0xFF795757),
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
          SizedBox(height: 10),
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
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      MyTextField(
                        controller: controller.usernameController,
                        labelText: 'Masukkan Email',
                      ),
                      MyTextField(
                        controller: controller.passwordController,
                        labelText: 'Masukkan Password',
                        obscureText: true,
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: myText(
                              text: "Forgot password",
                              style: TextStyle(color: Color(0xFF3B3030)))),
                      const SizedBox(height: 32),
                      MyButton(
                          onPressed: controller.login,
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
