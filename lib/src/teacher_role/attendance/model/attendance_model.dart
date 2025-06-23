enum AttendanceStatus { present, absent, lateArrival, leftEarly }

class AttendanceModel {
  AttendanceStatus? status;

  AttendanceModel({this.status});
}