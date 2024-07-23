import 'package:edu_base/res/Components/attendance_card.dart';
import 'package:edu_base/res/colors/appColors.dart';
import 'package:flutter/material.dart';

class AttendanceForTeacher extends StatefulWidget {
  const AttendanceForTeacher({super.key});

  @override
  State<AttendanceForTeacher> createState() => _AttendanceForTeacherState();
}

class _AttendanceForTeacherState extends State<AttendanceForTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.blueColor,
        title: Text(
          'Attendance',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 45,
            width: 400,
            color: Colors.blueGrey[400],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                Text(
                  'Tuesday,25 jan 2024',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Sellect a Section to mark attendance'),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    BaseCard(
                        ClassName: 'Nursery',
                        ClassSection: 'A',
                        Campus: 'Main Campus'),
                    SizedBox(
                      height: 40,
                    ),
                    BaseCard(
                        ClassName: 'KG',
                        ClassSection: 'A',
                        Campus: 'Main Campus'),
                    SizedBox(
                      height: 40,
                    ),
                    BaseCard(
                        ClassName: '1st',
                        ClassSection: 'A',
                        Campus: 'Main Campus'),
                    SizedBox(
                      height: 40,
                    ),
                    BaseCard(
                        ClassName: '6th',
                        ClassSection: 'A',
                        Campus: 'Main Campus'),
                    SizedBox(
                      height: 40,
                    ),
                    BaseCard(
                        ClassName: '9th',
                        ClassSection: 'A',
                        Campus: 'Main Campus'),
                    SizedBox(
                      height: 40,
                    ),
                    BaseCard(
                        ClassName: '10th',
                        ClassSection: 'A',
                        Campus: 'Main Campus'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
