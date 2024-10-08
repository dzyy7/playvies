
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:playvies/Controllers/dashboard_controller.dart';
import 'package:playvies/Controllers/favorite_controller.dart';
import 'package:playvies/Controllers/login_controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies(){
    Get.lazyPut(()=>DashboardController());
    Get.lazyPut(()=>LoginController());
    Get.lazyPut(()=>FavoriteController());
  }
}