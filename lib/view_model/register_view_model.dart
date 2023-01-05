import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterViewModel extends GetxController with SingleGetTickerProviderMixin{
  late TabController tabController;
late String email, password, confirmPassword;
  String? emailError, passwordError;
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

    return isValid;
  }
  void submitRegister() {
    if (validateRegister()) {
      Get.snackbar('Sign Up', 'Login successfully');
    } else {
      Get.snackbar('Sign Up', 'Invalid email or password');
    }
  }

}