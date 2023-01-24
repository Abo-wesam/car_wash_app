import 'dart:collection';

import 'package:car_wash_app/model/CustomerModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Services/SettingService.dart';
import '../constant.dart';
import '../model/CarModel.dart';

class ProfilController extends GetxController {

  User? user = FirebaseAuth.instance.currentUser;
  late String Type_car, license_plate;
  late String idcar='';
  late String colorSelected;
  late String Email;
  late String CUrrentPass = '';
  late String ConfirmPasswor = '';
  late String NewPassword = '';
  late String ConfirmPassworderror = '';
 late  bool isAdd=false;
late  CarModel carModel=[] as CarModel;




  void onInit() async {
    super.onInit();
  }

  Future<List<CarModel>> GetListCar() async {
    return SettingService().getCars();
  }

  Future<CustomerModel> getDataUser() async {
  return SettingService().GetUserdata();
  }

  bool ValidateCar() {
    bool isvalid = true;
    if (Type_car.isEmpty && license_plate.isEmpty && colorSelected.isEmpty) {
      isvalid = false;
    }
    return isvalid;
  }

  CreateNewCar() {
    if (ValidateCar()) {
      CarModel carModel = CarModel(car_type: Type_car, color_car: colorSelected, license_plate: license_plate);
      // CarModel({car_type:Type_car,color_car :colorSelected,license_plate: license_plate});
        SettingService().CreateNewCar(carModel);
    }
  }

  bool ValidateEditPass() {
    bool isvalid = true;
    if (ConfirmPasswor.isEmpty || NewPassword.isEmpty || CUrrentPass.isEmpty) {
      isvalid = false;
      ConfirmPassworderror = 'invalid password';
    }
    if (ConfirmPasswor != NewPassword) {
      isvalid = false;
      ConfirmPassworderror = 'invalid password';
      Get.snackbar('Password', 'Invaild to mach Password');
    }

    return isvalid;
  }

  EditCurrentPassword() {
    if (ValidateEditPass()) {
      late String? emailFofUser = user?.email.toString();
      user?.updatePassword(NewPassword).then((value) {
        Get.snackbar('Chang Password', "Successfully changed password");
      }).catchError((onError) {
        print(onError.toString());
        Get.snackbar(
            'Chang Password', 'Password cant be changed+$onError.toString()+');
      });
    }
  }
  updataDataUser(CustomerModel user){
  SettingService().UpdateUserProfile(user);
      Get.snackbar("Update", "Profile Updated Successfull");
  }

 Future<CarModel> handlingupdateCar(){
    return  SettingService().GetCarBYid(idcar);
 }

}
