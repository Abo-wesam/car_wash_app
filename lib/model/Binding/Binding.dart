import 'package:car_wash_app/Services/AuthService.dart';
import 'package:car_wash_app/view_model/dashboardController.dart';
import 'package:get/get.dart';

import '../../view_model/AccountController.dart';
import '../../view_model/HomeController.dart';
import '../../view_model/ProfilController.dart';
import '../../view_model/ScheduleController.dart';
import '../../view_model/login_view_model.dart';
import '../../view_model/register_carwash_view_model.dart';
import '../../view_model/register_view_model.dart';

class Binding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<LoginViewModel>(() => LoginViewModel());
    Get.lazyPut<RegisterCarwashViewModel>(() => RegisterCarwashViewModel());
    Get.lazyPut<RegisterViewModel>(() => RegisterViewModel());
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<ScheduleController>(() => ScheduleController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AccountController>(() => AccountController());
    Get.lazyPut<ProfilController>(() => ProfilController());
  }
}


