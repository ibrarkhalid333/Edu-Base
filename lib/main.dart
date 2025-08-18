import 'package:device_preview/device_preview.dart';
import 'package:edu_base/core/res/routes/route_names.dart';
import 'package:edu_base/core/res/routes/routes.dart';
import 'package:edu_base/src/auth/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context)=> ScreenUtilInit(
        designSize: const Size(360, 640),
        builder: (context, child) => const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context) ?? const Locale('en', 'US'),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.SplashScreen,
      getPages: AppRoutes.appRoutes(),
      home: const SplashScreen(),
    );
  }
}
