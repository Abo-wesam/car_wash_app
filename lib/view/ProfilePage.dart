import 'dart:html';

import 'package:car_wash_app/view/widget/form_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../model/CustomerModel.dart';
import '../../view_model/ProfilController.dart';


class ProfilePage extends GetWidget<ProfilController> {
  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: FutureBuilder(
            future: controller.getDataUser(),
            builder: (
              context,
              snapshot,
            ) {

              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  CustomerModel userdata = snapshot.data as CustomerModel;
                  final   emailedit=TextEditingController(text: userdata.email);
                  final  Nameedit=TextEditingController(text: userdata.FullName);

                  return Column(
                    children: [
                      Form(
                        child: Column(
                          children: [
                            //    SizedBox(height: screenHeight * .02),
                            Container(
                              margin: const EdgeInsets.all(9),
                              height: 50,
                              width: 100,
                            ),

                            //  SizedBox(height: screenHeight * .02),

                            TextFormField(
                              controller: Nameedit,
                              //       errorText: controller.name,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              enabled: controller.enabletoEdit,
                            ),

                            SizedBox(height: screenHeight * .025),
                            TextFormField(
                              controller: emailedit,
                              textInputAction: TextInputAction.next,
                              enabled: controller.enabletoEdit,
                            ),

                            SizedBox(height: screenHeight * .025),
                            FormButton(text: "Save", onPressed:(){
                              controller.updataDataUser(userdata);
                            }


                                //   controller.submitRegister,
                                ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
              }
              return Text('data');
            }),
      ),
    );
  }
}
