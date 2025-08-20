import 'package:edu_base/core/res/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SellectionContainer extends StatelessWidget {
  const SellectionContainer({
    super.key,
    required this.onPress,
    required this.title,
    required this.imagePath,
    this.width = 150,
    this.height = 250,
  });

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
        padding: EdgeInsets.all(2.sp),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(7.r)),
          boxShadow: [
            BoxShadow(
              color: Appcolors.blackColor.withAlpha(100),
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
              width: 25.sp,
              height: 25.sp,
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 7.sp, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
