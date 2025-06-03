import 'package:edu_base/src/attendance/model/attendance_model.dart';
import 'package:get/get.dart';

class AttendanceController extends GetxController {
  // Track attendance status for each student by index
  final RxMap<int, AttendanceStatus> attendanceMap = <int, AttendanceStatus>{}.obs;

  // Set attendance status (only one can be selected at a time)
  void setAttendance(int studentIndex, AttendanceStatus status) {
    attendanceMap[studentIndex] = status;
  }

  // Check if a student has a specific status
  bool hasStatus(int studentIndex, AttendanceStatus status) {
    return attendanceMap[studentIndex] == status;
  }

  // Optional: Mark all students as present
  void markAllPresent() {
    for (var i = 0; i < 10; i++) {
      attendanceMap[i] = AttendanceStatus.present;
    }
  }
}