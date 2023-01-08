import 'package:car_wash_app/Services/RegisterServs.dart';
import 'package:car_wash_app/model/CustomerModel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterViewModel extends GetxController with SingleGetTickerProviderMixin{
  FirebaseAuth _auth=FirebaseAuth.instance;
  late TabController tabController;
late String id, FullName, email, password, confirmPassword;
  String? emailError, passwordError,name;
  final bike = ''.obs;
   @override
     void onInit() {
      tabController = TabController(vsync: this, length: 2);
      bike.value='customer view model';
    email = "";
    password = "";
    confirmPassword = "";
    emailError = null;
    passwordError = null;

    super.onInit();
  }

  void resetErrorText() {
    emailError = null;
    passwordError = null;
    update();
  }
  bool validateRegister() {
    resetErrorText();

    RegExp emailExp = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

    bool isValid = true;
    if (email.isEmpty || !emailExp.hasMatch(email)) {
      emailError = "Email is invalid";

      isValid = false;
    }

    if (password.isEmpty || confirmPassword.isEmpty) {
      passwordError = "Please enter a password";

      isValid = false;
    }
    if (password != confirmPassword) {
      passwordError = "Passwords do not match";

      isValid = false;
    }
    if(FullName.isEmpty){
      name='Enter your full name ';
      isValid=false;
    }

    return isValid;
  }
  void submitRegister() async{
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = credential.user;
      print(user);
      if(user!=null){
        CustomerModel customerModel=CustomerModel(user.uid,FullName,password,email);

       if(await Registerservies().CreateNewUser(customerModel)){
         Get.snackbar('Register','Register successfull');
       }
      }

    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.snackbar('Register','The password provided is too weak.');
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Get.snackbar('Register','The account already exists for that email.');
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

}

