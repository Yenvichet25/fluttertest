import 'package:get/get.dart';

class GetxCountController extends GetxController{
  var counter = 0.obs;
  @override
  void onInit() {;
    super.onInit();
  }
  onInCreas(){
    counter++;
  }

  onDeinCreas(){
    counter--;
  }

}