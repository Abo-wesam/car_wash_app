import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../middleware/AuthGuardMiddleware.dart';
import '../../view/auth/login_page.dart';
import '../../view/auth/register_page.dart';

class Routes {
  static String Login = '/';
  static String Register = '/RegisterPage';
  static String screen3 = '/screen3';
  static String screen4 = '/screen4';
  static String screen5 = '/screen5';
  static String screen6 = '/screen6';



  static List<GetPage> routes =
  [
    GetPage(
      name: Routes.Login,
      page: () => LoginPage(),
    ),

    GetPage(
      name: Routes.Register,
      page: () =>  RegisterPage(),middlewares: [AuthGuardMiddleware()]
    ),
    // GetPage(
    //   name: Routes.screen3,
    //   page: () => const Screen3(),
    // ),
    // GetPage(
    //   name: Routes.screen4,
    //   page: () => const Screen4(),
    // ),
    // GetPage(
    //   name: Routes.screen5,
    //   page: () => const Screen5(),
    // ),
    // GetPage(
    //   name: Routes.screen6,
    //   page: () => const Screen6(),
    // ),
  ];





}

  /// Add this list variable into your GetMaterialApp as the value of getPages parameter.
  /// You can get the reference to the above GetMaterialApp code.
