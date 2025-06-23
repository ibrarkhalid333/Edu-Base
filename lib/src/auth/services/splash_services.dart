import 'dart:async';
import 'package:edu_base/core/res/routes/route_names.dart';
import 'package:get/get.dart';

class SplashServices {
  void IsLogin() {
    Timer(const Duration(seconds: 3), () => Get.toNamed(RouteNames.LoginScreen));
  }
}
