import 'package:edu_base/core/res/colors/appColors.dart';
import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
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
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
