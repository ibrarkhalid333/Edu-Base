import 'package:edu_base/core/res/colors/appColors.dart';
import 'package:edu_base/src/Components/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/diary_teacher_controller.dart';

class DiaryForTeacher extends StatefulWidget {
  const DiaryForTeacher({super.key});

  @override
  State<DiaryForTeacher> createState() => _DiaryForTeacherState();
}

class _DiaryForTeacherState extends State<DiaryForTeacher> {
  final String _dropdownValue = 'drop down';
  final DiaryTeacherController dtc = Get.put(DiaryTeacherController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diary'),
        backgroundColor: Appcolors.blueColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.sp),
        child: Column(
          children: [
            Container(
              height: 40.h,
              padding: EdgeInsets.fromLTRB(7.sp, 0, 0, 0),
              // width: 350,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter something',
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 40.sp,
                      width: 60.sp,
                      decoration: const BoxDecoration(
                          color: Appcolors.blackColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              elevation: 5,
              child: Obx(() => DropdownButton<String>(
                    items: [
                      DropdownMenuItem(
                        value: 'drop down',
                        child: Row(
                          children: [
                            const Icon(Icons.watch_later_outlined),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(dtc.firstItem.toString())
                          ],
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'Item 2',
                        child: Row(
                          children: [
                            const Icon(Icons.watch_later_outlined),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(dtc.secondItem.toString()),
                          ],
                        ),
                      )
                    ],
                    value: _dropdownValue,
                    onChanged: (String? newValue) => {
                      dtc.Onchanged(),
                    },
                    isExpanded: true,
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Card(
                      elevation: 10,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
                        child: Column(
                          children: [
                            Container(
                              // padding: EdgeInsets.fromLTRB(1, 0, 1, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 93,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: const Center(child: Text('5 Feb')),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 172,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: const Center(
                                        child: Text('Mathematics')),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 93,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: const Center(child: Text('3rd A')),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.fromLTRB(15, 20, 15, 20),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black)),
                              child: Column(
                                children: [
                                  const Row(
                                    children: [
                                      Text(
                                        'H.W:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text('Page Number 76, 88'),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Card(
                                    elevation: 5,
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 20, 0),
                                      height: 60,
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.play_arrow,
                                                  color: Appcolors
                                                      .primaryButtonColor,
                                                )),
                                            Slider(
                                                value: .8,
                                                onChanged: (Value) {}),
                                            const Text('00:00'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.fromLTRB(15, 20, 15, 20),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black)),
                              child: Column(
                                children: [
                                  const Row(
                                    children: [
                                      Text(
                                        'C.W:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text('Page Number 76 part (4)'),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Card(
                                    elevation: 5,
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 20, 0),
                                      height: 60,
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.play_arrow,
                                                  color: Appcolors
                                                      .primaryButtonColor,
                                                )),
                                            Slider(
                                                value: .8,
                                                onChanged: (Value) {}),
                                            const Text('00:00'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Card(
                                    elevation: 5,
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 20, 0),
                                      height: 60,
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.image,
                                                  color: Appcolors
                                                      .primaryButtonColor,
                                                )),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            const Text(
                                                'Click here to view image'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Card(
                      elevation: 5,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
                        child: Column(
                          children: [
                            Container(
                              // padding: EdgeInsets.fromLTRB(1, 0, 1, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 93,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: const Center(child: Text('5 Feb')),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 172,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: const Center(
                                        child: Text('Mathematics')),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 93,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: const Center(child: Text('3rd A')),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.fromLTRB(15, 20, 15, 20),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black)),
                              child: Column(
                                children: [
                                  const Row(
                                    children: [
                                      Text(
                                        'H.W:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text('Page Number 76, 88'),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Card(
                                    elevation: 5,
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 20, 0),
                                      height: 60,
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.play_arrow,
                                                  color: Appcolors
                                                      .primaryButtonColor,
                                                )),
                                            Slider(
                                                value: .8,
                                                onChanged: (Value) {}),
                                            const Text('00:00'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.fromLTRB(15, 20, 15, 20),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black)),
                              child: Column(
                                children: [
                                  const Row(
                                    children: [
                                      Text(
                                        'C.W:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text('Page Number 76 part (4)'),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Card(
                                    elevation: 5,
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 20, 0),
                                      height: 60,
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.play_arrow,
                                                  color: Appcolors
                                                      .primaryButtonColor,
                                                )),
                                            Slider(
                                                value: .8,
                                                onChanged: (Value) {}),
                                            const Text('00:00'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Card(
                                    elevation: 5,
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 20, 0),
                                      height: 60,
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.image,
                                                  color: Appcolors
                                                      .primaryButtonColor,
                                                )),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            const Text(
                                                'Click here to view image'),
                                          ],
                                        ),
                                      ),
                                    ),
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
            ),
            RoundButton(width: 360, title: '+ Create', onPress: () {}),
          ],
        ),
      ),
    );
  }
}
