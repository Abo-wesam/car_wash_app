
import 'package:car_wash_app/view/auth/ForgetPassword.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../middleware/AuthGuardMiddleware.dart';
import '../../view/Account_Page.dart';
import '../../view/AddNewCarPage.dart';
import '../../view/CarwashAccount_pag.dart';
import '../../view/Dashboard_Page.dart';
import '../../view/PasswordPage.dart';
import '../../view/ProfilePage.dart';
import '../../view/Schedul_Page.dart';
import '../../view/auth/login_page.dart';
import '../../view/auth/register_page.dart';
import '../../view/home_page.dart';

class Routes {
  static String Login = '/';
  static String Register = '/RegisterPage';
  static String ResetPass = '/ForgetPassword';
  static String dashboard = '/Dashboard';
  static String home = '/HomePage';
  static String Password = '/PasswordPage';
  static String profile = '/ProfilePage';
  static String Schedule = '/Schedulepage';
  static String EditaddCarpage = '/editaddcarpage';
  static String Account_Page = '/AccountPage';



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
    GetPage(
      name: Routes.EditaddCarpage,
      page: () =>  editaddcarpage(),
    ),GetPage(
      name: Routes.Account_Page,
      page: () =>  AccountPage(),
    ),
  ];





}

  /// Add this list variable into your GetMaterialApp as the value of getPages parameter.
  /// You can get the reference to the above GetMaterialApp code.
