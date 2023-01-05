import 'package:get/get.dart';

class RegisterCarwashViewModel extends GetxController{
  late String fullname,email, password,confirmPassword,mobile,address,describe;
  String? emailError, passwordError;
  @override
  void onInit() {
    fullname="";
  email = "";
    password = "";
    confirmPassword = "";
    mobile="";
    address="";
    describe="";
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