import 'package:edu_base/core/res/assets/image_asset.dart';
import 'package:edu_base/core/res/colors/appColors.dart';
import 'package:edu_base/src/parrent_role/students_info/components/student_card.dart';
import 'package:flutter/material.dart';

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
            padding: EdgeInsets.only(left: 10),
            child: Image.asset(ImageAssets.school_logo)),
        title: Text('EDUBASE EMS'),
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text('Button'),
                    ),
                    PopupMenuItem(child: Text('Button')),
                  ])
        ],
      ),
      body: Column(
        children: [
          StudentCard(
              image_path: '',
              student_name: 'Muzakir Ilahi',
              student_id: '',
              student_class: '',
              section: '',
              father_name: '',
              father_contact: '')
        ],
      ),
    );
  }
}
