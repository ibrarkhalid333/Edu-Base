import 'package:edu_base/core/res/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SellectionContainer extends StatelessWidget {
  const SellectionContainer({
    super.key,
    required this.onPress,
    required this.title,
    required this.imagePath,
    this.width = 50,
    this.height = 50,
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
        padding: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
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
              width: 70.sp,
              height: 70.sp,
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
