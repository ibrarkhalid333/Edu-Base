import 'package:edu_base/core/res/assets/image_asset.dart';
import 'package:edu_base/core/res/routes/route_names.dart';
import 'package:edu_base/src/home/components/selection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String teacher = 'Teacher';
  String Parent = 'Parents';
  String title = 'Student';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Select Role',
          style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SellectionContainer(
              title: teacher,
              width: 40.sp,
              height: 40.sp,
              imagePath: ImageAssets.teacher,
              onPress: () {
                Get.toNamed(RouteNames.TeacherDashboard);
              },
            ),
            SizedBox(
              width: 5.w,
            ),
            SellectionContainer(
              title: Parent,
              width: 40.sp,
              height: 40.sp,
              imagePath: ImageAssets.parents,
              onPress: () {
                Get.toNamed(RouteNames.StudentInfo);
              },
            ),
          ],
        ),
      ],
    ));
  }
}
