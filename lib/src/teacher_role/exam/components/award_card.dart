import 'package:flutter/material.dart';

class AwardCard extends StatelessWidget {
  const AwardCard({
    super.key,
    required this.onPress,
    this.ID = 74,
    required this.ClassName,
    this.Campus = 'Main Campus',
    required this.Subject,
    this.ExamType = 'Final Term',
    this.ExamDate = '22-Feb-2024',
    this.ReturnDate = '04-Mar-2024',
    this.width = 150,
    this.height = 250,
  });

  final double height, width;
  final VoidCallback onPress;
  final int ID;
  final String ClassName;
  final String Campus;
  final String Subject;
  final String ExamType;
  final String ExamDate;
  final String ReturnDate;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Card(
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          width: 350,
          color: Colors.pink.withOpacity(.3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Award List ID: $ID'),
              Text('Class: $ClassName'),
              Text('Campus: $Campus'),
              Text('Sbject(s): $Subject'),
              const Text('Exam Type: Final Term Exam'),
              const Text('Exam Date: 22-Feb-2024'),
              const Text('Return Date: 04-Mar-2024'),
            ],
          ),
        ),
      ),
    );
  }
}
