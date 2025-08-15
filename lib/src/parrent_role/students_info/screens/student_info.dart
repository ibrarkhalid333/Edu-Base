import 'package:edu_base/core/res/assets/image_asset.dart';
import 'package:edu_base/core/res/colors/appColors.dart';
import 'package:edu_base/core/res/routes/route_names.dart';
import 'package:edu_base/src/parrent_role/students_info/components/student_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudentInfo extends StatefulWidget {
  const StudentInfo({super.key});

  @override
  State<StudentInfo> createState() => _StudentInfoState();
}

class _StudentInfoState extends State<StudentInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Appcolors.blueColor,
        leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset(ImageAssets.school_logo)),
        title: const Text('EDUBASE EMS'),
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    const PopupMenuItem(
                      child: Text('Button'),
                    ),
                    const PopupMenuItem(child: Text('Button')),
                  ])
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StudentCard(
                onPress: () {
                  Get.toNamed(RouteNames.StudentDashboard);
                },
                image_path: ImageAssets.image,
                student_name: 'Muzakir Ilahi',
                student_id: '145',
                student_class: '6th',
                section: 'A',
                father_name: 'Karam Ilahi',
                father_contact: '0337 6040140'),
            StudentCard(
                onPress: () {},
                image_path: ImageAssets.image,
                student_name: 'Muzakir Ilahi',
                student_id: '145',
                student_class: '6th',
                section: 'A',
                father_name: 'Karam Ilahi',
                father_contact: '0337 6040140')
          ],
        ),
      ),
    );
  }
}
