import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';


import '../../view_model/ProfilController.dart';
import '../widget/form_button.dart';
import '../widget/input_field.dart';

class ProfilePage extends GetWidget<ProfilController>{
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
      return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
        //    SizedBox(height: screenHeight * .02),
            Container(
             margin: const EdgeInsets.all(9),
               height: 50,
               width: 100,

            ),

          //  SizedBox(height: screenHeight * .02),

            InputField(
              onChanged: (value) {
          //      controller.FullName = value;
              },
              labelText: "Full Name",
       //       errorText: controller.name,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              autoFocus: true,
            ),

           SizedBox(height: screenHeight * .025),
            InputField(
              onChanged: (value) {
                //controller.email = value;
              },
              labelText: "Email",
            //  errorText: controller.emailError,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              autoFocus: true,
            ),

            SizedBox(height: screenHeight * .025),
            FormButton(
              text: "Save",
                onPressed:() {}
             //   controller.submitRegister,
            ),



          ],
        ),
      ),
    );
  }
  
}