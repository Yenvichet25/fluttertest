import 'package:get/get.dart';

class CounterController extends GetxController {
  int count = 0;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  increament() {
    print(count);
    update();
    count++;
  }

  Decreament() {
    count--;
  }
}
