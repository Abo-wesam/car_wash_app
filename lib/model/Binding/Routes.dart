import 'package:car_wash_app/view/CarWashPags/add_service.dart';
import 'package:car_wash_app/view/auth/ForgetPassword.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../middleware/AuthGuardMiddleware.dart';
import '../../view/Account_Page.dart';
import '../../view/AddNewCarPage.dart';
import '../../view/CarWashPags/Home.dart';
import '../../view/CarWashPags/add_announcement.dart';
import '../../view/CarWashPags/add_announcement.dart';
import '../../view/CarWashPags/add_announcement.dart';
import '../../view/CarWashPags/ongoing_page_carwash.dart';
import '../../view/CarWashPags/schedule_page_carwash.dart';
import '../../view/CarWashPags/services_page_carwash.dart';
import '../../view/CarWashPags/services_page_carwash.dart';

import '../../view/CustomerPags/request_page.dart';
import '../../view/Dashboard_Page.dart';
import '../../view/PasswordPage.dart';
import '../../view/ProfilePage.dart';
import '../../view/Schedul_Page.dart';
import '../../view/auth/login_page.dart';
import '../../view/auth/register_page.dart';
import '../../view/home_page.dart';

class Routes {
  static String Login = '/LoginPage';
  static String Register = '/RegisterPage';
  static String ResetPass = '/ForgetPassword';
  static String dashboard = '/Dashboard';
  static String home = '/';
  static String Password = '/PasswordPage';
  static String profile = '/ProfilePage';
  static String Schedule = '/Schedulepage';
  static String EditaddCarpage = '/editaddcarpage';
  static String Account_Page = '/AccountPage';
  static String Services_Carwash_page = '/ServicesCarwashpage';
  static String addAnnuncement = '/AddAnnuncement';
  static String addService = '/AddService';
  static String schedule_page_carwash = '/SchedulePageCarwash';
  static String ongoing_page_carwash = '/OngoingPage';
  static String requestPage='/RequestPage';

  static List<GetPage> routes = [
    GetPage(
      name: Routes.Login,
      page: () => LoginPage(),
    ),
    GetPage(
        name: Routes.Register,
        page: () => RegisterPage(),
        middlewares: [AuthGuardMiddleware()]),
    GetPage(
      name: Routes.ResetPass,
      page: () => ForgetPassword(),
    ),
    GetPage(
      name: Routes.dashboard,
      page: () => Dashboard(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomePageCarwash(),
    ),
    GetPage(
      name: Routes.Password,
      page: () => PasswordPage(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => ProfilePage(),
    ),
    GetPage(
      name: Routes.Schedule,
      page: () => Schedulepage(),
    ),
    GetPage(
      name: Routes.EditaddCarpage,
      page: () => editaddcarpage(),
    ),
    GetPage(
      name: Routes.Account_Page,
      page: () => AccountPage(),
    ),
    GetPage(
      name: Routes.Services_Carwash_page,
      page: () => ServicesCarwashpage(),
    ),
    GetPage(
      name: Routes.addAnnuncement,
      page: () => AddAnnuncement(),
    ),
    GetPage(
      name: Routes.addService,
      page: () => AddService(),
    ),
    GetPage(
      name: Routes.schedule_page_carwash,
      page: () => SchedulePageCarwash(),
    ),
    GetPage(name: Routes.ongoing_page_carwash,
     page: () => OngoingPageCarwash()),
     GetPage(
      name: Routes.requestPage,
      page: () => RequestPage(),
    )
  ];
}

  /// Add this list variable into your GetMaterialApp as the value of getPages parameter.
  /// You can get the reference to the above GetMaterialApp code.
