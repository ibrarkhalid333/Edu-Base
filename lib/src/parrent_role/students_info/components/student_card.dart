import 'package:flutter/material.dart';

class StudentCard extends StatelessWidget {
  const StudentCard({
    super.key,
    required this.image_path,
    required this.student_name,
    required this.student_id,
    required this.student_class,
    required this.section,
    required this.father_name,
    required this.father_contact,
  });
  final String image_path;
  final String student_name;
  final String student_id;
  final String student_class;
  final String section;
  final String father_name;
  final String father_contact;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Text('The Skills Education System'), Text(student_name)],
      ),
    );
  }
}
