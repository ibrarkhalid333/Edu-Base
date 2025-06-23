
import 'package:edu_base/src/auth/screens/login_screen.dart';
import 'package:edu_base/src/auth/screens/otp_field_screen.dart';
import 'package:edu_base/src/auth/screens/splash_screen.dart';
import 'package:edu_base/src/example.dart';
import 'package:edu_base/src/home/screens/home_screen.dart';
import 'package:edu_base/src/parrent_role/students_info/screens/student_info.dart';
import 'package:edu_base/src/teacher_role/attendance/screens/attendance_teacher.dart';
import 'package:edu_base/src/teacher_role/diary_teacher/screens/diaryteacher.dart';
import 'package:edu_base/src/teacher_role/exam/screens/award_list.dart';
import 'package:edu_base/src/teacher_role/teacher_dashboard/teacher_dashboard.dart';
import 'package:get/get.dart';
import 'route_names.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(name: RouteNames.SplashScreen, page: () => const SplashScreen()),
        GetPage(name: RouteNames.LoginScreen, page: () => const LoginScreen()),
        GetPage(name: RouteNames.OtpScreen, page: () => const OtpFieldScreen()),
        GetPage(name: RouteNames.HomeScreen, page: () => const HomeScreen()),
        GetPage(name: RouteNames.DiaryTeacher, page: () => const DiaryForTeacher()),
        GetPage(
            name: RouteNames.TeacherDashboard, page: () => const TeacherDashboard()),
        GetPage(name: RouteNames.Example, page: () => const Example()),
        GetPage(
            name: RouteNames.TAttendance, page: () => const AttendanceForTeacher()),
        GetPage(name: RouteNames.AwardList, page: () => const AwardList()),
        GetPage(name: RouteNames.StudentInfo, page: () => const StudentInfo())
      ];
}
