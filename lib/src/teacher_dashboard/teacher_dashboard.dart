import 'package:edu_base/core/res/assets/image_asset.dart';
import 'package:edu_base/core/res/colors/appColors.dart';
import 'package:edu_base/core/res/routes/route_names.dart';
import 'package:edu_base/src/home/components/selection_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeacherDashboard extends StatefulWidget {
  const TeacherDashboard({super.key});

  @override
  State<TeacherDashboard> createState() => _TeacherDashboardState();
}

class _TeacherDashboardState extends State<TeacherDashboard> {
  var Items = [
    'Diay',
    'Attendance',
    'Exam',
    'Parent Talk',
    'Application',
    'Settings'
  ];
  var ImageAsset = [
    ImageAssets.diary,
    ImageAssets.attendance,
    ImageAssets.exam,
    ImageAssets.parent_talk,
    ImageAssets.application,
    ImageAssets.setting
  ];
  Set<String> RouteName = {
    RouteNames.DiaryTeacher,
    RouteNames.TAttendance,
    RouteNames.AwardList,
    RouteNames.OtpScreen,
    RouteNames.SplashScreen,
    RouteNames.Example,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 300,
              padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(150),
                  bottomRight: Radius.circular(150),
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 20,
                    ),
                    title: Text(
                      'The Skills Education \nSystem',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text('View Profile >',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    trailing: InkWell(
                      onTap: () {
                        Get.toNamed(RouteNames.HomeScreen);
                      },
                      child: Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Hi, Mudasir Ilahi',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
              padding: EdgeInsets.fromLTRB(25, 230, 25, 30),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 20),
                  itemCount: Items.length,
                  itemBuilder: (context, index) {
                    return SellectionContainer(
                        title: Items[index],
                        imagePath: ImageAsset[index],
                        onPress: () {
                          Get.toNamed(RouteName.elementAt(index));
                        });
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Appcolors.blackColor.withOpacity(.1),
            blurRadius: 2,
          )
        ]),
        child: BottomNavigationBar(
          elevation: 20,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notifications'),
          ],
        ),
      ),
    );
  }
}
