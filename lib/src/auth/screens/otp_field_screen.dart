import 'package:edu_base/core/res/assets/image_asset.dart';
import 'package:edu_base/core/res/routes/route_names.dart';
import 'package:edu_base/src/Components/round_button.dart';
import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            ImageAssets.logo,
            fit: BoxFit.cover,
            width: 100,
            height: 100,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "EDUBASE",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(
            "PARENTS",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w900, color: Colors.blue),
          ),
          const SizedBox(
            height: 50,
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
          const SizedBox(
            height: 10,
          ),
          RoundButton(
              title: 'Submit',
              width: 300,
              loading: false,
              onPress: () {
                Get.toNamed(RouteNames.HomeScreen);
              }),
        ],
      ),
    ));
  }
}
