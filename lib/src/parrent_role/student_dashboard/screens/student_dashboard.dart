import 'package:edu_base/core/res/assets/image_asset.dart';
import 'package:edu_base/src/parrent_role/components/student_profile_card.dart';
import 'package:flutter/material.dart';

class StudentDashboard extends StatefulWidget {
  const StudentDashboard({super.key});

  @override
  State<StudentDashboard> createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Student Dashboard'),
      // ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 130,
                color: Colors.blue,
              ),
              Expanded(
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: double.infinity,
                    color: Colors.green,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        Expanded(
                          child: GridView.builder(
                              itemCount: 8,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      mainAxisSpacing: 10,
                                      crossAxisSpacing: 10),
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Container(
                                      height: 60,
                                      child: Image(
                                        image: AssetImage(ImageAssets.image),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text('This')
                                  ],
                                );
                              }),
                        )
                      ],
                    )),
              ),
            ],
          ),
          Positioned(
            top: 30,
            left: 20,
            right: 20,
            child: StudentProfileCard(
                height: 130,
                stnae: 'Mufakir Ilahi',
                stclass: '6th',
                section: 'A',
                rollNo: '17',
                campus: 'Main Campus',
                onPress: () {},
                imgUrl: ImageAssets.image),
          )
        ],
      ),
    );
  }
}
