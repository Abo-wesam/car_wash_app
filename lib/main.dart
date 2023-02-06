
import 'package:car_wash_app/constant.dart';
import 'package:car_wash_app/view/auth/login_page.dart';
import 'package:car_wash_app/view/home_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/foundation.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'model/Binding/Binding.dart';
import 'model/Binding/Routes.dart';


Future<void>  main()  async  {
  WidgetsFlutterBinding.ensureInitialized();
 

   await Firebase.initializeApp(
    options:
    const FirebaseOptions(
      apiKey: "AIzaSyAstC6WwEUAfDIANxYy7Q2xuig1LuEl0AM",
      appId: "1:156576147314:android:783c727aa984987b8f9feb",
      messagingSenderId: "156576147314",
      projectId: "carwashapp-56917", ),
  );
  // var authService = Get.find<AuthService>();


  // FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      

      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Car wash app',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        primarySwatch: Colors.blue,
         // add tabBarTheme 
      
         // deprecated,
     ) ,
      

       initialBinding: Binding(),

      getPages: Routes.routes,
      // home:  Scaffold(
      //   body: LoginPage(),
      // ),

      // getPages: [
      //   GetPage(
      //       name: Routes.Login,
      //       page: () => LoginPage(),middlewares: [AuthGuardMiddleware()]
      //   ),
      //
      // ],
    );
  }
}

