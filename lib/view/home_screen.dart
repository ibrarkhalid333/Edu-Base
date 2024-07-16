import 'package:edu_base/res/assets/image_asset.dart';
import 'package:edu_base/res/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:edu_base/res/Components/selection_container.dart';
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
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
        SizedBox(
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
            SizedBox(
              width: 10,
            ),
            SellectionContainer(
              title: Parent,
              width: 150,
              height: 160,
              imagePath: ImageAssets.parents,
              onPress: () {},
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    ));
  }
}
