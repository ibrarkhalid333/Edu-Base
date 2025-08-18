import 'package:edu_base/core/res/assets/image_asset.dart';
import 'package:edu_base/core/res/routes/route_names.dart';
import 'package:edu_base/src/Components/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.fromLTRB(15.w, 0, 15.w, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            ImageAssets.logo,
            width: 40.sp,
            height: 40.sp,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            "EDUBASE",
            style: TextStyle(
              fontSize: 7.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "PARENTS",
            style: TextStyle(
                fontSize: 8.sp,
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
                'Enter Phone Number',
                textAlign: TextAlign.left,
              ),
              IntlPhoneField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(),
                  ),
                ),
                initialCountryCode: 'PK',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          RoundButton(
              height: 50.h,
              title: 'Get OTP',
              //width: 300.w,
              width: double.infinity,
              loading: false,
              onPress: () {
                Get.toNamed(RouteNames.OtpScreen);
              }),
        ],
      ),
    ));
  }
}
