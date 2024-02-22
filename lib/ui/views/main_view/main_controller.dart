
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_P2/ui/views/main_view/bottom_navigation_bar.dart';
class MainController extends GetxController{
  Rx<BottomNavigationEnum> select=BottomNavigationEnum.HOME.obs;
  //Rx<PageController> controller=PageController().obs;
  PageController controller=PageController();
  RxList<String> omar=<String>[].obs;
  RxInt button=0.obs;
  @override
  void onInit() {
    super.onInit();
  }
}