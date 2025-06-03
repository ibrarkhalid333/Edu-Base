
import 'package:edu_base/src/attendance/screens/attendance_teacher.dart';
import 'package:edu_base/src/auth/screens/login_screen.dart';
import 'package:edu_base/src/auth/screens/otp_field_screen.dart';
import 'package:edu_base/src/auth/screens/splash_screen.dart';
import 'package:edu_base/src/diary_teacher/screens/diaryteacher.dart';
import 'package:edu_base/src/exam/screens/award_list.dart';
import 'package:edu_base/src/example.dart';
import 'package:edu_base/src/home/screens/home_screen.dart';
import 'package:edu_base/src/teacher_dashboard/teacher_dashboard.dart';
import 'package:get/get.dart';
import 'route_names.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(name: RouteNames.SplashScreen, page: () => SplashScreen()),
        GetPage(name: RouteNames.LoginScreen, page: () => LoginScreen()),
        GetPage(name: RouteNames.OtpScreen, page: () => OtpFieldScreen()),
        GetPage(name: RouteNames.HomeScreen, page: () => HomeScreen()),
        GetPage(name: RouteNames.DiaryTeacher, page: () => DiaryForTeacher()),
        GetPage(
            name: RouteNames.TeacherDashboard, page: () => TeacherDashboard()),
        GetPage(name: RouteNames.Example, page: () => Example()),
        GetPage(
            name: RouteNames.TAttendance, page: () => AttendanceForTeacher()),
        GetPage(name: RouteNames.AwardList, page: () => AwardList())
      ];
}
