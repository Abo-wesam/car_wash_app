import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../../view_model/AccountController.dart';
import '../widget/custom_text.dart';
import '../widget/custom_text_form_field.dart';
import 'CarsPage.dart';
import 'PasswordPage.dart';
import 'ProfilePage.dart';

class AccountPage extends GetWidget<AccountController> {
  @override
  Widget build(BuildContext context) {
    FirebaseAuth _auth = FirebaseAuth.instance;

    // double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //  leading: Goback(),
          title: const Text("Me"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            // top: 5,
            left: 10,
            right: 10,
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(9),
                height: 100,
                //Handling photo for User
                child: Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 90,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(
                          image: AssetImage("images/Account.png"),
                        ),
                      ),
                    ),
                    //   const SizedBox(height: 10,),
                    const TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blueAccent, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        prefixIcon: Icon(Icons.edit),
                      ),
                    ),
                  ],
                ),
              ),

              //    SizedBox(height: screenHeight * 0.03),
              Container(
                margin: const EdgeInsets.all(9),
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: TabBar(
                  controller: controller.tabController,
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: const [
                    Tab(
                      child: CustomText(
                          text: 'Profile', alignment: Alignment.center),
                    ),
                    Tab(
                      child: CustomText(
                          text: 'Password', alignment: Alignment.center),
                    ),
                    Tab(
                      child: CustomText(
                          text: 'My Cars', alignment: Alignment.center),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: controller.tabController,
                  children: [
                    ProfilePage(),
                    PasswordPage(),
                    CarsPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
