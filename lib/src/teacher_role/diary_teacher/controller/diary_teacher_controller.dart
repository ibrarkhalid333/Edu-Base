import 'package:get/get.dart';

class DiaryTeacherController extends GetxController {
  RxString newValue = ''.obs;
  RxString firstItem = 'Pending'.obs;
  RxString secondItem = 'Completed'.obs;

  Onchanged() {
    newValue.value = firstItem.value;
    firstItem.value = secondItem.value;
    secondItem.value = newValue.value;
  }
}
