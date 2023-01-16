import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../view_model/HomeController.dart';

class HomePage extends GetWidget<HomeController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(child: Center(child: Text('Home'),),),
    );
  }

}