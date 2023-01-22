
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../view_model/register_view_model.dart';
import '../widget/form_button.dart';
import '../widget/input_field.dart';

class RegisterPageCustomer extends StatefulWidget {
  const RegisterPageCustomer({super.key});

  @override
  State<RegisterPageCustomer> createState() => _RegisterPageCustomerState();
}

class _RegisterPageCustomerState extends State<RegisterPageCustomer> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    //final controller = Get.put(RegisterViewModel());

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
            GetBuilder<RegisterViewModel>(
              init: RegisterViewModel(),
              builder: (controller) => InputField(
                onChanged: (value) {
                  controller.password = value;
                },
                
                labelText: "Full Name",
                errorText: controller.passwordError,
                obscureText: true,
                textInputAction: TextInputAction.next,
              ),
            ),
            SizedBox(height: screenHeight * .025),
            GetBuilder<RegisterViewModel>(
              
              builder: (controller) => InputField(
                onChanged: (value) {
                  controller.email = value;
                },
                labelText: "Email",
                errorText: controller.emailError,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                autoFocus: true,
              ),
            ),
            SizedBox(height: screenHeight * .025),
            GetBuilder<RegisterViewModel>(
              builder: (controller) => InputField(
                onChanged: (value) {
                  controller.password = value;
                },
                
                labelText: "Password",
                errorText: controller.passwordError,
                obscureText: true,
                textInputAction: TextInputAction.next,
              ),
            ),
            SizedBox(height: screenHeight * .025),
            GetBuilder<RegisterViewModel>(
              builder: (controller) => InputField(
                onChanged: (value) {
                  controller.confirmPassword = value;
                },
                labelText: "Confirm Password",
                errorText: controller.passwordError,
                obscureText: true,
                textInputAction: TextInputAction.done,
              ),
            ),
            SizedBox(
              height: screenHeight * .050,
            ),
            GetBuilder<RegisterViewModel>(
              builder: (controller) => FormButton(
                text: "Sign Up",
                onPressed: controller.submitRegister,
              ),
            ),
            
            
          ],
        ),
      ),
    );
  }
}
