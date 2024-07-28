import 'package:edu_base/res/assets/image_asset.dart';
import 'package:edu_base/res/colors/appColors.dart';
import 'package:flutter/material.dart';

class ClassAttendance extends StatefulWidget {
  const ClassAttendance({super.key});

  @override
  State<ClassAttendance> createState() => _ClassAttendanceState();
}

class _ClassAttendanceState extends State<ClassAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.blueColor,
        title: Center(
          child: Text(
            'Tuesday 25 june 2024',
            style: TextStyle(fontSize: 20),
          ),
        ),
        actions: [
          Container(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Icon(Icons.help_outline))
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Appcolors.blueColor.withOpacity(.5),
            height: 40,
            child: Center(
              child: Text('6th A - Main Campus'),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(8.0),
              children: [
                DataTable(
                    columnSpacing: 5.0,
                    dataRowMaxHeight: 80,
                    columns: [
                      DataColumn(label: Text('Sr.')),
                      DataColumn(label: Text('Picture')),
                      DataColumn(label: Text('Name')),
                      DataColumn(label: Text('Attendence')),
                    ],
                    rows: List<DataRow>.generate(
                        10,
                        (index) => DataRow(cells: [
                              DataCell(Text((index + 1).toString())),
                              DataCell(CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(
                                  ImageAssets.image,
                                ),
                              )),
                              DataCell(Text('jkdhfu')),
                              DataCell(Text('jkdhfu')),
                            ])))
              ],
            ),
          )
        ],
      ),
    );
  }
}
