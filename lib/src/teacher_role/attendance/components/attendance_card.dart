import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  const BaseCard(
      {super.key,
      required this.onPress,
      required this.ClassName,
      required this.ClassSection,
      required this.Campus,
      this.height = 50,
      this.width = 370});
  final VoidCallback onPress;
  final String ClassName;
  final String Campus;
  final String ClassSection;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('$ClassName ($Campus)'),
                  const Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            InkWell(
              onTap: onPress,
              child: Container(
                  height: height - 10,
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(60, 10, 20, 5),
                  color: Colors.green[100],
                  child: Text(ClassSection)),
            ),
          ],
        ));
  }
}
