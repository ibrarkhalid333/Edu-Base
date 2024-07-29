import 'package:edu_base/res/Components/round_button.dart';
import 'package:edu_base/res/assets/image_asset.dart';
import 'package:edu_base/res/colors/appColors.dart';
import 'package:flutter/material.dart';

class ClassAttendance extends StatefulWidget {
  const ClassAttendance({super.key});

  @override
  State<ClassAttendance> createState() => _ClassAttendanceState();
}

class _ClassAttendanceState extends State<ClassAttendance> {
  final List<String> Name = [
    'Sudais Rehman',
    'Sana Ullah',
    'Hizbullah',
    'Muhammad Sullaiman',
    'Muhammad Fahad',
    'Muhammad Numan',
    'Hakeem Ullah',
    'Saifullah',
    'Awais Qadir',
    'Ahmad Hassan'
  ];
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
                                radius: 25,
                                backgroundImage: AssetImage(
                                  ImageAssets.image,
                                ),
                              )),
                              DataCell(Text(Name[index],
                                  style: TextStyle(fontSize: 12))),
                              DataCell(Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: Appcolors.blackColor),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Center(child: Text('A')),
                                  ),
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: Appcolors.blackColor),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Center(
                                        child: Text(
                                      'B',
                                    )),
                                  ),
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: Appcolors.blackColor),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Center(child: Text('C')),
                                  ),
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: Appcolors.blackColor),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Center(child: Text('D')),
                                  ),
                                ],
                              )),
                            ])))
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Appcolors.blackColor.withOpacity(.1),
            blurRadius: 2,
          )
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'Mark All',
                  style: TextStyle(color: Appcolors.blueColor),
                )),
            RoundButton(
              width: 120,
              height: 50,
              title: 'SAVE',
              onPress: () {},
            ),
            Container(
              child: Row(
                children: [
                  Icon(Icons.filter_alt),
                  Text('filter'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
