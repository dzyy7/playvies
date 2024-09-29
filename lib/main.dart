import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:playvies/Pages/dashboard_page.dart';
import 'package:playvies/bindings/bindings.dart';
import 'package:playvies/Pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const LoginPage(),binding: MyBindings()),
        GetPage(name: '/dashboard', page: () =>DashboardPage (), binding: MyBindings()),
        
      ],
    );
  }
}
