import 'package:edu_base/core/res/assets/image_asset.dart';
import 'package:edu_base/core/res/routes/route_names.dart';
import 'package:edu_base/src/home/components/selection_container.dart';
import 'package:flutter/material.dart';
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
        const Text(
          'Select Role',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SellectionContainer(
              title: teacher,
              width: 150,
              height: 160,
              imagePath: ImageAssets.teacher,
              onPress: () {
                Get.toNamed(RouteNames.TeacherDashboard);
              },
            ),
            const SizedBox(
              width: 10,
            ),
            SellectionContainer(
              title: Parent,
              width: 150,
              height: 160,
              imagePath: ImageAssets.parents,
              onPress: () {
                Get.toNamed(RouteNames.StudentInfo);
                
              },
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    ));
  }
}
