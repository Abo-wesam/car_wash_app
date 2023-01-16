import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../view_model/ScheduleController.dart';

class Schedulepage extends GetWidget<ScheduleController>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: Center(child: Text('Schedulepage'),),),
    );
  }
  
}