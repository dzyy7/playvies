import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:playvies/Pages/Menu/home_page.dart';
import 'package:playvies/Pages/Menu/ongoing_page.dart';
import 'package:playvies/Pages/Menu/playlist_page.dart';
import 'package:playvies/Pages/Menu/profile_page.dart';

import '../Controllers/dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController =
        Get.find();

    final List<Widget> menus = [
      HomePage(),
      PlaylistPage(),
      OngoingPage(),
      ProfilePage()
    ];

    return Obx(() {
      return Scaffold(
          body: menus[dashboardController.selectedIndex.value],
          bottomNavigationBar: CurvedNavigationBar(
            index: dashboardController.selectedIndex.value,
            onTap: dashboardController.changeMenu,
            backgroundColor: Color(0xFF191A19 ),
            color: Color.fromARGB(255, 16, 43, 22),
            buttonBackgroundColor: Color.fromARGB(255, 16, 43, 22),
            items: const [
              Icon(Icons.home_outlined,size: 30,color: Color(0xFFD8E9A8),),
              Icon(Icons.play_arrow,size: 30,color: Color(0xFFD8E9A8),),
              Icon(Icons.replay,size: 30,color: Color(0xFFD8E9A8),),
              Icon(Icons.person,size: 30,color: Color(0xFFD8E9A8),),
            ],
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 250 ),
          ));
    });
  }
}
