import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountController extends GetxController with SingleGetTickerProviderMixin{

  late TabController tabController;
  final bike = ''.obs;
  @override
  void onInit() {
    tabController = TabController(vsync: this, length: 3);
    bike.value='customer view model';
    super.onInit();
  
  }
  EnableToEdit(bool v) async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    if(v==true){
      _pref.setBool('enableEdit', true);
    }
    _pref.setBool('enableEdit', false);

  }

}