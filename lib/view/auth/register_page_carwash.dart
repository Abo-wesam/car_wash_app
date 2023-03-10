import 'package:car_wash_app/view_model/register_carwash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/form_button.dart';
import '../widget/input_field.dart';


class RegisterPageCarwash extends  GetWidget<RegisterCarwashViewModel> {
  // const RegisterPageCarwash({super.key});
  final _formKey = GlobalKey<FormState>();
  // @override
  // State<RegisterPageCarwash> createState() => _RegisterPageCarwashState();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(

          children: [
            SizedBox(height: screenHeight * .02),
            Container(
              margin: const EdgeInsets.all(9),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  alignment: Alignment.center,
                  scale: 3.5,
                  image: AssetImage("images/logo.png"),
                ),
                border: Border.all(
                    width: 1.5,
                    color: Colors.blueAccent,
                    style: BorderStyle.solid),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: screenHeight * .02),
            InputField(
              onChanged: (value) {
                controller.fullname = value;
              },
              labelText: "Full Name",
              errorText: controller.nameError,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              autoFocus: true,
            ),

            SizedBox(height: screenHeight * .025),
            InputField(
              onChanged: (value) {
                controller.email = value;
              },
              labelText: "Email",
              errorText: controller.emailError,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              autoFocus: true,
            ),

            SizedBox(height: screenHeight * .025),
            InputField(
                onChanged: (value) {
                  controller.password = value;
                },
                labelText: "Password",
                errorText: controller.passwordError,
                obscureText: true,
                textInputAction: TextInputAction.next,
              ),

            SizedBox(height: screenHeight * .025),
            InputField(
                onChanged: (value) {
                  controller.confirmPassword = value;
                },
                
                labelText: "Confirm Password",
                errorText: controller.passwordError,
                obscureText: true,
                textInputAction: TextInputAction.next,
              ),

            SizedBox(height: screenHeight * .025),
           InputField(
                onChanged: (value) {
                  controller.mobile = value;
                },
                
                labelText: "Mobile",
                errorText: controller.passwordError,
                obscureText: true,
                textInputAction: TextInputAction.next,
              ),

            SizedBox(height: screenHeight * .025),
            InputField(
                onChanged: (value) {
                  controller.address = value;
                },
                labelText: "Address",
                errorText: controller.passwordError,
                obscureText: true,
                textInputAction: TextInputAction.next,
              ),

            SizedBox(height: screenHeight * .025),
             InputField(
                onChanged: (value) {
                  controller.describe = value;
                },
                
                labelText: "Describe",
                errorText: controller.passwordError,
                obscureText: true,
                textInputAction: TextInputAction.next,
              ),
            SizedBox(height: screenHeight * .025),
            SizedBox(
              height: screenHeight * .030,
            ),
           FormButton(
                text: "Sign Up",
                onPressed: controller.submitRegister,
              ),
          ],
        ),
      ),
    );
  }
}

