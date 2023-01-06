import 'package:car_wash_app/model/Binding/Binding.dart';
import 'package:car_wash_app/view/auth/login_page.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Car wash app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: LoginPage(),
      ),
    );
  }
}
