/*
  Flutter UI
  ----------
  lib/screens/simple_login.dart
*/
import 'package:car_wash_app/view/auth/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../view_model/login_view_model.dart';
import '../widget/form_button.dart';
import '../widget/input_field.dart';

class ForgetPassword extends GetWidget<LoginViewModel> {
  GlobalKey<FormState> _globalKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          key: _globalKey,
          shrinkWrap: true,
          children: [
            SizedBox(height: screenHeight * .02),
            Container(

              margin: const EdgeInsets.all(9),
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  alignment: Alignment.center,
                  scale: 2.5,

                  image: AssetImage("images/logo.png"),
                ),
                border: Border.all(
                    width: 1.5,
                    color: Colors.blueAccent,
                    style: BorderStyle.solid),
                shape: BoxShape.circle,
              ),
            ),


            SizedBox(
                height: screenHeight * .1),

            InputField(
              onChanged: (value) {
                controller.email= value;

              },
              labelText: "Email",
              errorText: controller.emailError,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              autoFocus: true,
            ),

            SizedBox(
                height: screenHeight * .025),




            FormButton(

              text: "Reset Password",
              onPressed: controller.handlePasswordReset,
            ),



          ],
        ),
      ),
    );
  }
}
