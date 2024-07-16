import 'package:edu_base/view/home_screen.dart';
import 'package:edu_base/view/login_screen.dart';
import 'package:edu_base/view/otp_field_screen.dart';
import 'package:edu_base/view/splash_screen.dart';
import 'package:edu_base/view/teacher_dashboard.dart';
import 'package:get/get.dart';
import 'route_names.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(name: RouteNames.SplashScreen, page: () => SplashScreen()),
        GetPage(name: RouteNames.LoginScreen, page: () => LoginScreen()),
        GetPage(name: RouteNames.OtpScreen, page: () => OtpFieldScreen()),
        GetPage(name: RouteNames.HomeScreen, page: () => HomeScreen()),
        GetPage(
            name: RouteNames.TeacherDashboard, page: () => TeacherDashboard()),
      ];
}
