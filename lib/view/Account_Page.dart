import 'package:car_wash_app/view/widget/custom_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../../view_model/AccountController.dart';
import 'CarsPage.dart';
import 'PasswordPage.dart';
import 'ProfilePage.dart';

class AccountPage extends GetWidget<AccountController> {
  @override
  Widget build(BuildContext context) {
    Icon editicon = new Icon(Icons.edit);
    FirebaseAuth _auth = FirebaseAuth.instance;
    late TextEditingController _name =
        TextEditingController.fromValue(TextEditingValue(text: 'Hemoo'));

    double screenHeight = MediaQuery.of(context).size.height;
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Stack(
                              children: [
                        Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("images/Account.png"),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(onPressed: (){

                              }, icon: Icon(Icons.edit)),
                              // SizedBox(height: screenHeight * 0.01),
                              // TextField(
                              //   controller: _name,
                              // )
                            ],

                          )


                        ]),
                      ]))

                      //SizedBox(height: 20.0),
                    ],
                  )),
              SizedBox(height: screenHeight * 0.03),
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
