import 'package:edu_base/res/assets/image_asset.dart';
import 'package:edu_base/res/colors/appColors.dart';
import 'package:flutter/material.dart';

class SellectionContainer extends StatelessWidget {
  const SellectionContainer({
    Key? key,
    required this.onPress,
    required this.title,
    required this.imagePath,
    this.width = 150,
    this.height = 250,
  }) : super(key: key);

  final double height, width;
  final VoidCallback onPress;
  final String title;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Appcolors.blackColor.withOpacity(.4),
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
