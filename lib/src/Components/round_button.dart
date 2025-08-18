import 'package:edu_base/core/res/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundButton extends StatelessWidget {
  RoundButton(
      {super.key,
      this.textColor = Appcolors.primaryTextColor,
      this.buttonColor = Appcolors.primaryButtonColor,
      this.title = '',
      required this.onPress,
      this.width = 30,
      this.height = 30,
      this.loading = false,
      this.icon = const Icon(Icons.account_circle)});

  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onPress;
  final Color textColor, buttonColor;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: buttonColor, borderRadius: BorderRadius.circular(10)),
          child: loading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Center(
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white),
                  ),
                )),
    );
  }
}
