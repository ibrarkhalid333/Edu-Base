import 'package:get/get.dart';

class DiaryTeacherController extends GetxController {
  RxString newValue = ''.obs;
  RxString firstItem = 'Pending'.obs;
  RxString secondItem = 'Completed'.obs;

  Onchanged() {
    this.newValue.value = firstItem.value;
    this.firstItem.value = this.secondItem.value;
    this.secondItem.value = newValue.value;
  }
}
