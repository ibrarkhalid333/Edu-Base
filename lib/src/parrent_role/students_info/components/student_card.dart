import 'package:edu_base/core/res/colors/appColors.dart';
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
    required this.onPress,
  });
  final String image_path;
  final String student_name;
  final String student_id;
  final String student_class;
  final String section;
  final String father_name;
  final String father_contact;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 1.0),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'The Skills Education System',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text('Main Campus', style: TextStyle(fontSize: 15)),
            const SizedBox(
              height: 5,
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: Appcolors.blueColor,
              child: image_path.isNotEmpty
                  ? CircleAvatar(
                      radius: 48,
                      backgroundImage: AssetImage(image_path),
                    )
                  : const CircleAvatar(
                      radius: 48,
                      child: Icon(Icons.person, size: 48),
                    ),
            ),
            Text(student_name, style: TextStyle(fontSize: 15)),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Table(
                columnWidths: const {
                  0: FlexColumnWidth(1.5),
                  1: FlexColumnWidth(2),
                },
                children: [
                  _buildTableRow('SID', student_id),
                  _buildTableRow('Class', student_class),
                  _buildTableRow('Section', section),
                  _buildTableRow('Sessiion', '2024-25'),
                  _buildTableRow('Father Name', father_name),
                  _buildTableRow('Father Contact', father_contact),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            Center(
              child: TextButton(
                  onPressed: onPress, child: const Text('View Details')),
            ),
          ],
        ),
      ),
    );
  }

  TableRow _buildTableRow(String label, String value) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(
            label,
            style: TextStyle(
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
