import 'package:get/get.dart';
import 'package:playvies/Pages/dashboard_page.dart';
import 'package:playvies/Pages/login_page.dart';
import 'package:playvies/Pages/movie_detail_page.dart';
import 'package:playvies/bindings/bindings.dart';

class AppRoutes {
  static const String login = '/';
  static const String dashboard = '/dashboard';
  static const String movieDetail = '/movie-detail';

  static List<GetPage> routes = [
    GetPage(
      name: login,
      page: () => const LoginPage(),
      binding: MyBindings(),
    ),
    GetPage(
      name: dashboard,
      page: () => const DashboardPage(),
      binding: MyBindings(),
    ),
    GetPage(
      name: movieDetail,
      page: () => MovieDetailPage(
        movieTitle: Get.parameters['title'] ?? '',
      ),
      binding: MyBindings(),
    ),
  ];
}