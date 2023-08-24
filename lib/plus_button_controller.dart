import 'package:get/get.dart';
class PlusButtonController extends GetxController{
  int countUp = 0;
  int countDown = 0;
  void increaseUpButton() {
    countUp++;
    update();
  }
  void increaseDownButton() {
    countDown++;
    update();
  }
}