import 'package:edu_base/core/res/assets/image_asset.dart';
import 'package:edu_base/core/res/routes/route_names.dart';
import 'package:edu_base/src/Components/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OtpFieldScreen extends StatefulWidget {
  const OtpFieldScreen({super.key});

  @override
  State<OtpFieldScreen> createState() => _OtpFieldScreenState();
}

class _OtpFieldScreenState extends State<OtpFieldScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            ImageAssets.logo,
            fit: BoxFit.cover,
            width: 80.sp,
            height: 80.sp,
          ),
          SizedBox(
            height: 6.h,
          ),
          Text(
            "EDUBASE",
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "PARENTS",
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w900,
                color: Colors.blue),
          ),
          SizedBox(
            height: 60.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Enter OTP',
                textAlign: TextAlign.left,
              ),
              TextFormField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 6,
                decoration: InputDecoration(
                    hintText: '000000',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          RoundButton(
              height: 40.h,
              title: 'Submit',
              width: double.infinity,
              loading: false,
              onPress: () {
                Get.toNamed(RouteNames.HomeScreen);
              }),
        ],
      ),
    ));
  }
}
