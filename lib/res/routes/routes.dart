import 'package:edu_base/view/attendance_teacher.dart';
import 'package:edu_base/view/award_list.dart';
import 'package:edu_base/view/diaryteacher.dart';
import 'package:edu_base/view/example.dart';
import 'package:edu_base/view/home_screen.dart';
import 'package:edu_base/view/login_screen.dart';
import 'package:edu_base/view/otp_field_screen.dart';
import 'package:edu_base/view/splash_screen.dart';
import 'package:edu_base/view/teacher_dashboard.dart';
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
