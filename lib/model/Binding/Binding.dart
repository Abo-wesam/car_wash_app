import 'package:get/get.dart';

import '../../view_model/login_view_model.dart';
import '../../view_model/register_carwash_view_model.dart';
import '../../view_model/register_view_model.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginViewModel>(() => LoginViewModel());
    Get.lazyPut<RegisterCarwashViewModel>(() => RegisterCarwashViewModel());
    Get.lazyPut<RegisterViewModel>(() => RegisterViewModel());
  }
}


