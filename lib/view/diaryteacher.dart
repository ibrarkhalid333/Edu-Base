import 'package:edu_base/res/colors/appColors.dart';
import 'package:flutter/material.dart';

class DiaryForTeacher extends StatefulWidget {
  const DiaryForTeacher({super.key});

  @override
  State<DiaryForTeacher> createState() => _DiaryForTeacherState();
}

class _DiaryForTeacherState extends State<DiaryForTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diary'),
        backgroundColor: Appcolors.blueColor,
      ),
    );
  }
}
