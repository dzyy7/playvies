import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:playvies/Pages/Menu/Tablet/profile_page_tablet.dart';
import 'package:playvies/Pages/Menu/mobile/profile_page.dart';
import 'package:playvies/bindings/responsif_controller.dart';


class ResponsiveLayout extends StatelessWidget {
  ResponsiveLayout({super.key});
  final ResponsifController responsifController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx((){
      if(responsifController.isMobile()){
        return ProfilePage();
      }
      else{
        return ProfilePageTablet();
      }
    });
  }
}