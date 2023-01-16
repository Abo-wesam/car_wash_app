import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';


import '../../view_model/ProfilController.dart';

class ProfilePage extends GetWidget<ProfilController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: Center(child: Text('Profile'),),),
    );
  }
  
}