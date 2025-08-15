import 'package:edu_base/core/res/assets/image_asset.dart';
import 'package:edu_base/core/res/colors/appColors.dart';
import 'package:flutter/material.dart';

class StudentProfileCard extends StatelessWidget {
  const StudentProfileCard(
      {Key? key,
      required this.stnae,
      required this.stclass,
      required this.section,
      required this.rollNo,
      required this.campus,
      required this.onPress,
      this.height = 150,
      this.width = 300,
      required this.imgUrl})
      : super(key: key);

  final String stnae;
  final String stclass;
  final String section;
  final String rollNo;
  final String campus;
  final VoidCallback onPress;
  final double height, width;
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        width: width,
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  stnae,
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  width: 100,
                  height: 5,
                  color: Colors.amber,
                ),
                Text(stclass + '-' + section),
                Text('Roll No: ' + rollNo),
                Text(campus)
              ],
            ),
            Column(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Appcolors.blueColor),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Image(
                    image: AssetImage(imgUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                    height: 30,
                    child: TextButton(
                        onPressed: onPress, child: Text('View Profile')))
              ],
            )
          ],
        ),
      ),
    );
  }
}
