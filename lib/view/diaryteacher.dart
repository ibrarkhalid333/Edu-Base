import 'package:edu_base/res/Components/round_button.dart';
import 'package:edu_base/res/colors/appColors.dart';
import 'package:edu_base/view_model/controlller/diary_teacher_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiaryForTeacher extends StatefulWidget {
  const DiaryForTeacher({super.key});

  @override
  State<DiaryForTeacher> createState() => _DiaryForTeacherState();
}

class _DiaryForTeacherState extends State<DiaryForTeacher> {
  String? _dropdownValue = 'drop down';
  final DiaryTeacherController dtc = Get.put(DiaryTeacherController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diary'),
        backgroundColor: Appcolors.blueColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              // width: 350,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter something',
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Appcolors.blackColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 5,
              child: Obx(() => DropdownButton<String>(
                    items: [
                      DropdownMenuItem(
                        child: Row(
                          children: [
                            Icon(Icons.watch_later_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(dtc.firstItem.toString())
                          ],
                        ),
                        value: 'drop down',
                      ),
                      DropdownMenuItem(
                        child: Row(
                          children: [
                            Icon(Icons.watch_later_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(dtc.secondItem.toString()),
                          ],
                        ),
                        value: 'Item 2',
                      )
                    ],
                    value: _dropdownValue,
                    onChanged: (String? newValue) => {
                      dtc.Onchanged(),
                    },
                    isExpanded: true,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 80,
                            child: Center(child: Text('5 Feb')),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                          ),
                          Container(
                            height: 50,
                            width: 168,
                            child: Center(child: Text('Mathematics')),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                          ),
                          Container(
                            height: 50,
                            width: 80,
                            child: Center(child: Text('3rd A')),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'H.W:',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text('Page Number 76, 88'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
