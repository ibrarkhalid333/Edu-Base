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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: SingleChildScrollView(
                child: Card(
                    elevation: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('9th (Main Campus)'),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ),
                        Container(
                            width: 370,
                            padding: EdgeInsets.fromLTRB(60, 5, 20, 5),
                            color: Colors.green[100],
                            child: Text('A')),
                      ],
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
