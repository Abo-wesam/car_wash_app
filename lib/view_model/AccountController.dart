import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountController extends GetxController with SingleGetTickerProviderMixin{
  late TabController tabController;
  final bike = ''.obs;
  @override
  void onInit() {
    tabController = TabController(vsync: this, length: 3);
    bike.value='customer view model';
    super.onInit();
  }

}