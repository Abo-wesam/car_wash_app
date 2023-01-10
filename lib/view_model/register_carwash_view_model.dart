import 'package:car_wash_app/model/CarWashModel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../Services/RegisterServs.dart';

class RegisterCarwashViewModel extends GetxController{
  FirebaseAuth _auth=FirebaseAuth.instance;
  late String fullname,email, password,confirmPassword,mobile,address,describe,photo,start,end;
  String? emailError, passwordError,nameError;
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
    photo="";
    start="";
    end="";
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
    if(fullname.isEmpty||fullname.length<=10){
      nameError="It must contain at least three names";
      isValid = false;
    }

    return isValid;
  }

    void submitRegister() async {

      try {
        if (validateRegister()) {
          final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: email,
            password: password,
          );
          final user = credential.user;
          print(user);
          if (user != null) {
            CarWashModel customerModel = CarWashModel(
                user.uid,
                fullname,
                email,
                password,
                address,
                describe,
                photo,
                start,
                end);

            if (await Registerservies().CreateNewCarWash(customerModel)) {
              Get.snackbar('Register', 'Register successfull');
            }
          }
        }
        else{
          Get.snackbar('Register', 'Please Fill the Data');
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          Get.snackbar('Register', 'The password provided is too weak.');
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          Get.snackbar(
              'Register', 'The account already exists for that email.');
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    }
  }
