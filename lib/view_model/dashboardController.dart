import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController{


  var tabindex=0;
  void changselectedtab(int index){
    tabindex=index;
    update();

  }


  late PageController pageController;
  var currentIndex = 0.obs;
  GlobalKey bottomNavigationKey = GlobalKey();
  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    pageController.dispose();
  }



}
