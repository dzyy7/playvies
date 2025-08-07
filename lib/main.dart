import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playvies/Controllers/dashboard_controller.dart';
import 'package:playvies/Pages/Menu/playlist_page.dart';
import 'package:playvies/Pages/dashboard_page.dart';
import 'package:playvies/Pages/login_page.dart';
import 'package:playvies/bindings/bindings.dart';
import 'package:playvies/bindings/responsif_controller.dart';
import 'package:playvies/Pages/responsive_layout.dart'; 

void main() {
  Get.put(ResponsifController());
  Get.put(DashboardController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ResponsifController responsiveController = Get.find();
  final DashboardController dashboardController = Get.find();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        responsiveController.updateScreenwidth(constraints.maxWidth);

        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          getPages: [
            GetPage(
              name: '/',
              page: () => LoginPage(),
              binding: MyBindings(),
            ),
            GetPage(
              name: '/dashboard',
              page: () => DashboardPage(),
              binding: MyBindings(),
            ),

          ],
        );
      },
    );
  }
}
