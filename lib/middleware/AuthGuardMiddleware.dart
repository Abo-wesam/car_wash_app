
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Services/AuthService.dart';

class AuthGuardMiddleware extends GetMiddleware {

  @override
  RouteSettings? redirect(String? route) {
  //  print(AuthService().isLoggedIn());
    if(AuthService().isLoggedIn()==true)
      return (RouteSettings(name: '/Register'));
    // if(authService.isLoggedIn()!=null)return RouteSettings(name: 'Register');
    // return authService.isLoggedIn() ? null : RouteSettings(name: '/Register');
  }
}