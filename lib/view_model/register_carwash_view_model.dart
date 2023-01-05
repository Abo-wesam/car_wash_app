import 'package:get/get.dart';

class RegisterCarwashViewModel extends GetxController{
  final carwash = ''.obs;
  @override
  void onInit() {
  
    carwash.value = 'Carwash viewmodel';
    super.onInit();
  }

}