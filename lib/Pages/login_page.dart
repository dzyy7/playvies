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
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF191A19),
              Color(0xFF1E5128),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header Section
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD8E9A8),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.movie_outlined,
                          size: 40,
                          color: Color(0xFF1E5128),
                        ),
                      ),
                      const SizedBox(height: 24),
                      // Welcome Text
                      const myText(
                        text: "Welcome Back!",
                        style: TextStyle(
                          color: Color(0xFFD8E9A8),
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          fontFamily: 'Calistoga',
                        ),
                      ),
                      const SizedBox(height: 8),
                      const myText(
                        text: "Sign in to continue your movie journey",
                        style: TextStyle(
                          color: Color(0xFFD8E9A8),
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              // Form Section
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFD8E9A8),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 0,
                        blurRadius: 20,
                        offset: Offset(0, -5),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Form Title
                          const Center(
                            child: myText(
                              text: "Login",
                              style: TextStyle(
                                color: Color(0xFF1E5128),
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Calistoga',
                              ),
                            ),
                          ),
                          const SizedBox(height: 32),
                          
                          // Email Field
                          _buildInputField(
                            controller: controller.usernameController,
                            label: 'Email',
                            hint: 'Enter your email',
                            icon: Icons.email_outlined,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          const SizedBox(height: 20),
                          
                          // Password Field
                          _buildInputField(
                            controller: controller.passwordController,
                            label: 'Password',
                            hint: 'Enter your password',
                            icon: Icons.lock_outline,
                            obscureText: true,
                          ),
                          const SizedBox(height: 16),
                          
                          // Forgot Password
                          Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {
                                Get.snackbar(
                                  'Info',
                                  'Forgot password feature coming soon!',
                                  snackPosition: SnackPosition.TOP,
                                );
                              },
                              child: const myText(
                                text: "Forgot Password?",
                                style: TextStyle(
                                  color: Color(0xFF1E5128),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 32),
                          
                          // Login Button
                          Center(
                            child: Container(
                              width: double.infinity,
                              height: 56,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Color(0xFF1E5128), Color(0xFF2D5016)],
                                ),
                                borderRadius: BorderRadius.circular(28),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF1E5128).withOpacity(0.3),
                                    spreadRadius: 1,
                                    blurRadius: 8,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: ElevatedButton(
                                onPressed: controller.login,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                ),
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Color(0xFFD8E9A8),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          
                          // Sign Up Section
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const myText(
                                text: "Don't have an account? ",
                                style: TextStyle(
                                  color: Color(0xFF1E5128),
                                  fontSize: 14,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.snackbar(
                                    'Info',
                                    'Sign up feature coming soon!',
                                    snackPosition: SnackPosition.TOP,
                                  );
                                },
                                child: const myText(
                                  text: "Sign Up",
                                  style: TextStyle(
                                    color: Color(0xFF1E5128),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          
                          // Demo Credentials Info
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: const Color(0xFF1E5128).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: const Color(0xFF1E5128).withOpacity(0.3),
                              ),
                            ),
                            child: const Column(
                              children: [
                                myText(
                                  text: "Demo Credentials:",
                                  style: TextStyle(
                                    color: Color(0xFF1E5128),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                myText(
                                  text: "Email: admin | Password: admin",
                                  style: TextStyle(
                                    color: Color(0xFF1E5128),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField({
    required TextEditingController controller,
    required String label,
    required String hint,
    required IconData icon,
    bool obscureText = false,
    TextInputType? keyboardType,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myText(
          text: label,
          style: const TextStyle(
            color: Color(0xFF1E5128),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            keyboardType: keyboardType,
            style: const TextStyle(
              color: Color(0xFF1E5128),
              fontSize: 16,
            ),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 14,
              ),
              prefixIcon: Icon(
                icon,
                color: const Color(0xFF1E5128),
                size: 22,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: Color(0xFF1E5128),
                  width: 2,
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}