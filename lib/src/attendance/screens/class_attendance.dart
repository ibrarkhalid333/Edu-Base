import 'package:edu_base/core/res/assets/image_asset.dart';
import 'package:edu_base/core/res/colors/appColors.dart';
import 'package:edu_base/src/Components/round_button.dart';
import 'package:edu_base/src/attendance/controller/attendance_controller.dart';
import 'package:edu_base/src/attendance/model/attendance_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClassAttendance extends StatelessWidget {
  ClassAttendance({super.key});

  final AttendanceController atc = Get.put(AttendanceController());
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
        title: const Center(
          child: Text(
            'Tuesday 25 june 2024',
            style: TextStyle(fontSize: 20),
          ),
        ),
        actions: [
          Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: const Icon(Icons.help_outline))
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Appcolors.blueColor.withOpacity(.5),
            height: 40,
            child: const Center(
              child: Text('6th A - Main Campus'),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: [
                DataTable(
                    columnSpacing: 5.0,
                    dataRowMaxHeight: 80,
                    columns: const [
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
                                  style: const TextStyle(fontSize: 12))),
                              DataCell(Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () => atc.setAttendance(
                                        index, AttendanceStatus.absent),
                                    child: Obx(() => Container(
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                              color: atc.hasStatus(index,
                                                      AttendanceStatus.absent)
                                                  ? Colors.red
                                                  : Colors.transparent,
                                              border: Border.all(
                                                  width: 1,
                                                  color: Appcolors.blackColor),
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: const Center(child: Text('A')),
                                        )),
                                  ),
                                  InkWell(
                                    onTap: () => atc.setAttendance(
                                        index, AttendanceStatus.present),
                                    child: Obx(()=>Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: atc.hasStatus(index,
                                                      AttendanceStatus.present)
                                                  ? Colors.green
                                                  : Colors.transparent,
                                          border: Border.all(
                                              width: 1,
                                              color: Appcolors.blackColor),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: const Center(child: Text('P')),
                                    ),) 
                                  ),
                                  InkWell(
                                    onTap: () => atc.setAttendance(
                                        index, AttendanceStatus.lateArrival),
                                    child: Obx(()=>Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: atc.hasStatus(index,
                                                      AttendanceStatus.lateArrival)
                                                  ? Colors.orange
                                                  : Colors.transparent,
                                          border: Border.all(
                                              width: 1,
                                              color: Appcolors.blackColor),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: const Center(child: Text('LA')),
                                    ),),
                                  ),
                                  InkWell(
                                    onTap: () => atc.setAttendance(
                                        index, AttendanceStatus.leftEarly),
                                    child: Obx(()=>Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: atc.hasStatus(index,
                                                      AttendanceStatus.leftEarly)
                                                  ? Colors.blue
                                                  : Colors.transparent,
                                          border: Border.all(
                                              width: 1,
                                              color: Appcolors.blackColor),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: const Center(child: Text('LE')),
                                    ),),
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
        padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
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
                onPressed: () => atc.markAllPresent(),
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
              child: const Row(
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
