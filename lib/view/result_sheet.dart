import 'package:edu_base/res/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultSheet extends StatefulWidget {
  const ResultSheet({super.key});

  @override
  State<ResultSheet> createState() => _ResultSheetState();
}

class _ResultSheetState extends State<ResultSheet> {
  final List<String> RollNo = [
    '156',
    '157',
    '158',
    '159',
    '160',
    '161',
    '162',
    '163',
    '164',
    '165'
  ];
  final List<String> Name = [
    'Subhan Ahmad',
    'Akram Ullah',
    'Muhammad Hasnain',
    'Zulkifal',
    'Farhad Wafa',
    'Ayan Ullah',
    'Muzkir Ilahi',
    'Tayyab Ullah',
    'Awais Qadir',
    'Saif Ullah'
  ];
  final List<String> Written = [
    '50',
    '40',
    '20',
    '40',
    '52',
    '10',
    '69',
    '20',
    '05',
    '15'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.blueColor,
        toolbarHeight: 70,
        title: Text(
          'Exam Name: Final Term Exam\nExam Date : 22-Jan-2024',
          style: TextStyle(fontSize: 15),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(Icons.save),
                Text('save'),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5.0),
            height: 60,
            color: Colors.blue[100],
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('class : 8th'),
                    Text('AwardList ID: 74'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Text('Subject(s): Mathematics'),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(8.0),
              children: [
                DataTable(
                    columnSpacing: 5,
                    columns: [
                      DataColumn(label: Text('Sr.')),
                      DataColumn(label: Text('Roll No.')),
                      DataColumn(label: Text('Name ')),
                      DataColumn(label: Text('written ')),
                      DataColumn(label: Text('Oral')),
                    ],
                    rows: List<DataRow>.generate(
                        RollNo.length,
                        (index) => DataRow(cells: [
                              DataCell(Text((index + 1).toString())),
                              DataCell(Text(RollNo[index])),
                              DataCell(Text(Name[index])),
                              DataCell(Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.0,
                                        color: Appcolors.blackColor),
                                  ),
                                  child: Center(child: Text(Written[index])))),
                              DataCell(Text('')),
                            ]))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
