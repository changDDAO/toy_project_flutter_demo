import 'package:get/get.dart';
class PlusButtonController extends GetxController{
  int count = 0;
  void increase() {
    count++;
    update();
  }
}