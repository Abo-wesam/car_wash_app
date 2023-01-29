import 'dart:js';

import 'package:car_wash_app/model/CarModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constant.dart';
import '../model/CustomerModel.dart';
import '../view/Account_Page.dart';


class SettingService {
  CollectionReference _ReferenceCar =
      FirebaseFirestore.instance.collection('CarTb');
  CollectionReference _ReferenceCust =
      FirebaseFirestore.instance.collection('Customer');
  FirebaseAuth _auth = FirebaseAuth.instance;


// final _pref=SharedPreferences.getInstance();

  Future<List<CarModel>> getCars() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    var custId = await _pref.getString(Data_Current_User);
    final snapshot =
        await _ReferenceCar.where('id_cust', isEqualTo: custId).get();

    final caremodel = snapshot.docs
        .map((e) =>
            CarModel.fromsnapshot(e as DocumentSnapshot<Map<String, dynamic>>))
        .toList();
    return caremodel;
  }

  CreateNewCar(CarModel car) async {

      if (!await isExsist(car.car_type, "CarTb","car_type")) {
        SharedPreferences _prefe = await SharedPreferences.getInstance();
        var getcount = await _ReferenceCar.doc().get();
        var custId = _prefe.getString(Data_Current_User);
        car.id_cust = custId!;
        car.id_car = getRandomString(5);
        print(car.id_cust);
        await _ReferenceCar.doc(car.id_car).set(car.tojson());
        Get.snackbar("CreateCar", "Operations Successfull");
        Get.to(AccountPage());
      }

      Get.snackbar("CreateCar", "Car alrady Exsist");
      Get.to(AccountPage());

  }

  Future<CustomerModel> GetUserdata() async {
    final snapshot =
        await _ReferenceCust.where('id', isEqualTo: _auth.currentUser?.uid)
            .get();

    final userdata = snapshot.docs
        .map((e) => CustomerModel.fromsnapshot(
            e as DocumentSnapshot<Map<String, dynamic>>))
        .single;
    print(userdata.FullName);
    return userdata;
  }

  UpdateUserProfile(CustomerModel user) async {
    final Result = await _ReferenceCust.doc(user.id).update(user.tojson());
  }

  Future<CarModel> GetCarBYid(String idcar) async {
    final snapshot =
        await _ReferenceCar.where('id_car', isEqualTo: idcar).get();
    final userdata = snapshot.docs
        .map((e) =>
            CarModel.fromsnapshot(e as DocumentSnapshot<Map<String, dynamic>>))
        .single;
    return userdata;
  }

 Future<bool>  isExsist(String parm, String tblName,String docName) async {

  final result =
        await FirebaseFirestore.instance.collection(tblName).where(docName,isEqualTo: parm).get();

    if (!(result==null)) {
      print('check done');
      return true;
    }
    print('check no');
    return false;
  }
}
