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
        Get.put(DashboardController());

    final List<Widget> menus = [
      HomePage(),
      PlaylistPage(),
      OngoingPage(),
      ProfilePage()
    ];

    return Obx(() {
      return Scaffold(
          body: menus[dashboardController.selectedIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: dashboardController.selectedIndex.value,
            type: BottomNavigationBarType.fixed,
            onTap: dashboardController.changeMenu,
            backgroundColor: Color(0xFF664343), // Add this line
            selectedItemColor: Color(0xFFFFF0D1), // Add this line
            unselectedItemColor: Color(0xFFFFF0D1), // Add this line
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.play_arrow), label: "Playlist"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.replay), label: "On-Going"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile")
            ],
          ));
    });
  }
}
