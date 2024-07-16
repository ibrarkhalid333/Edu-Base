import 'package:edu_base/res/routes/route_names.dart';
import 'package:edu_base/res/routes/routes.dart';
import 'package:edu_base/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RouteNames.SplashScreen,
      getPages: AppRoutes.appRoutes(),
      home: SplashScreen(),
    );
  }
}
