import 'package:edu_base/res/Components/award_card.dart';
import 'package:edu_base/res/colors/appColors.dart';
import 'package:edu_base/view/result_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwardList extends StatefulWidget {
  const AwardList({super.key});

  @override
  State<AwardList> createState() => _AwardListState();
}

class _AwardListState extends State<AwardList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Award List'),
        backgroundColor: Appcolors.blueColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText:
                      'You can search with class name, award list id and subject',
                  suffixIcon: Icon(Icons.search),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(8.0, 25, 8.0, 0),
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        AwardCard(
                          onPress: () {
                            Get.to(ResultSheet());
                          },
                          ClassName: '8th (A)',
                          Subject: 'Mathematics',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AwardCard(
                          onPress: () {},
                          ClassName: '8th (A)',
                          Subject: 'Physics',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AwardCard(
                          onPress: () {},
                          ClassName: '8th (A)',
                          Subject: 'Biology',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AwardCard(
                          onPress: () {},
                          ClassName: '8th (A)',
                          Subject: 'Chemistry',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AwardCard(
                          onPress: () {},
                          ClassName: '8th (A)',
                          Subject: 'Urdu',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AwardCard(
                          onPress: () {},
                          ClassName: '8th (A)',
                          Subject: 'Islamic Studies',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AwardCard(
                          onPress: () {},
                          ClassName: '8th (A)',
                          Subject: 'English',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
