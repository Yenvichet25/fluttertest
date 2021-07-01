import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LocalStroageController extends GetxController{
  late TextEditingController nameController = TextEditingController();
  late TextEditingController positionController = TextEditingController();
  List listDevelop = [];
  final box = GetStorage();
  @override
  void onInit() {
    onFetchData();
    super.onInit();
  }
  onSaveData(){
    List lstDP = [];
    Map<String,dynamic> developer ={
      "name":nameController.text,
      "position":positionController.text
    };
    lstDP.add(developer);
    lstDP.addAll(listDevelop);
    box.write('developer', lstDP);

    onFetchData();
  }

  onFetchData() async{
    listDevelop =  await box.read('developer');
    print(listDevelop);
    update();
  }

  onDeleteData(int index){
    listDevelop.removeAt(index);
    box.remove('developer');

    box.write('developer', listDevelop);
    update();
  }
}