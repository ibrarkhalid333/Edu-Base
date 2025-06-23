import 'package:edu_base/core/res/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/award_card.dart';
import 'result_sheet.dart';

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
        title: const Text('Award List'),
        backgroundColor: Appcolors.blueColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText:
                      'You can search with class name, award list id and subject',
                  suffixIcon: Icon(Icons.search),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 25, 8.0, 0),
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        AwardCard(
                          onPress: () {
                            Get.to(const ResultSheet());
                          },
                          ClassName: '8th (A)',
                          Subject: 'Mathematics',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AwardCard(
                          onPress: () {},
                          ClassName: '8th (A)',
                          Subject: 'Physics',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AwardCard(
                          onPress: () {},
                          ClassName: '8th (A)',
                          Subject: 'Biology',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AwardCard(
                          onPress: () {},
                          ClassName: '8th (A)',
                          Subject: 'Chemistry',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AwardCard(
                          onPress: () {},
                          ClassName: '8th (A)',
                          Subject: 'Urdu',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AwardCard(
                          onPress: () {},
                          ClassName: '8th (A)',
                          Subject: 'Islamic Studies',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AwardCard(
                          onPress: () {},
                          ClassName: '8th (A)',
                          Subject: 'English',
                        ),
                        const SizedBox(
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
