import 'package:car_wash_app/view/widget/form_button.dart';
import 'package:car_wash_app/view/widget/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../view_model/ProfilController.dart';

class PasswordPage extends GetWidget<ProfilController> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    // var formkey = GlobalKey<FormState>();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),

          // key: formkey = GlobalKey<FormState>(),
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
                        controller.CUrrentPass = value;
                },
                labelText: "Current Password",
                errorText: controller.ConfirmPassworderror,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.next,
                obscureText: true,
                autoFocus: false,

              ),

              SizedBox(height: screenHeight * .025),
              InputField(

                onChanged: (value) {
                  controller.NewPassword = value;
                },
                labelText: "New Password",
                errorText: controller.ConfirmPassworderror,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.next,
                obscureText: true,
                autoFocus: true,
              ),
              SizedBox(height: screenHeight * .025),
              InputField(
                onChanged: (value) {
                  controller.ConfirmPasswor = value;
                },
                labelText: "Confirm Password",
                errorText: controller.ConfirmPassworderror,
                // keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.next,
                obscureText: true,
                autoFocus: true,
              ),

              SizedBox(height: screenHeight * .025),
              FormButton(
                  text: "Save",
                  onPressed: () {


                      controller.EditCurrentPassword();

                  }

              ),


            ],
          ),

      ),
    );
  }

}