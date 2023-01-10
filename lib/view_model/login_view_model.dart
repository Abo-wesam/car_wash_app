import 'package:car_wash_app/view/auth/register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../Services/AuthService.dart';

class LoginViewModel extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  // var authService = Get.find<AuthService>();
  late String email, password;
  String? emailError, passwordError;
  // late final Function(String? email, String? password)? onSubmitted;
  @override
  void onInit() {
    email = "";
    password = "";


    emailError = null;
    passwordError = null;

    super.onInit();
  }

  void resetErrorText() {
    emailError = null;
    passwordError = null;
    update();
  }

  bool validateLogin() {
    //check method
    resetErrorText();

    RegExp emailExp = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

    bool isValid = true;
    if (email.isEmpty || !emailExp.hasMatch(email)) {
      emailError = "Email is invalid";
      isValid = false;
    }

    if (password.isEmpty) {
      passwordError = "Please enter a password";

      isValid = false;
    }

    return isValid;
  }


  void submitLogin()async {
    if (validateLogin()) {
     await _auth.signInWithEmailAndPassword(email: email, password: password).then((value) => print(value.user));
      Get.snackbar('Login', 'Login successfully');
     // print( _auth.currentUser.getIdTokenResult().then((value) => value.claims)) ;
      Get.to(RegisterPage());
    } else {
      Get.snackbar('Login', 'Invalid email or password');
    }
  }


}