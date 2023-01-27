import 'package:car_wash_app/view/CarWashPags/Home.dart';
import 'package:car_wash_app/view/auth/ForgetPassword.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../middleware/AuthGuardMiddleware.dart';
import '../../view/CarWashPags/Dashboard_Page.dart';
import '../../view/CarWashPags/Dashboard_Page.dart';
import '../../view/CarWashPags/Dashboard_Page.dart';
import '../../view/CarWashPags/PasswordPage.dart';
import '../../view/CarWashPags/ProfilePage.dart';
import '../../view/CarWashPags/Schedul_Page.dart';
import '../../view/auth/login_page.dart';
import '../../view/auth/register_page.dart';

class Routes {
  static String Login = '/';
  static String Register = '/RegisterPage';
  static String ResetPass = '/ForgetPassword';
  static String dashboard = '/Dashboard';
  static String home = '/Home';
  static String Password = '/PasswordPage';
  static String profile = '/ProfilePage';
  static String Schedule = '/Schedulepage';



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
    GetPage(
      name: Routes.ResetPass,
      page: () =>  ForgetPassword(),
    ),
    GetPage(
      name: Routes.dashboard,
      page: () =>  Dashboard(),
    ),
    GetPage(
      name: Routes.home,
      page: () =>  HomePage(),
    ),
    GetPage(
      name: Routes.Password,
      page: () =>  PasswordPage(),
    ),
    GetPage(
      name: Routes.profile,
      page: () =>  ProfilePage(),
    ),
    GetPage(
      name: Routes.Schedule,
      page: () =>  Schedulepage(),
    ),
  ];





}

  /// Add this list variable into your GetMaterialApp as the value of getPages parameter.
  /// You can get the reference to the above GetMaterialApp code.
