import 'package:car_wash_app/view/widget/custom_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../view_model/AccountController.dart';
import '../view_model/ProfilController.dart';
import 'CarsPage.dart';
import 'PasswordPage.dart';
import 'ProfilePage.dart';

class AccountPage extends GetWidget<AccountController>  {
  final double coverHight = 120;
  final double profileHight = 100;
  @override
  Widget build(BuildContext context) {

    final top = coverHight - profileHight;
    final bottom = profileHight / 2;
    Icon editicon = new Icon(Icons.edit);
    FirebaseAuth _auth = FirebaseAuth.instance;

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
                child: Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: bottom),
                      ),
                      CoverProfile(),
                      Positioned(top: top, child: ImageProfile()),
                    ],
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    IconButton(onPressed: () {
                      ProfilController prof=Get.put(ProfilController());
                      prof.enableEdit();
                      prof.update();

                    }
                    , icon: Icon(Icons.edit)),
                    SizedBox(
                      width: 110,
                    ),
                    Text(
                      "Car_Wash",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.star,
                          color: Colors.amber,
                        )),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.025),
              Container(
                margin: const EdgeInsets.all(9),
                height: 100,
                decoration: BoxDecoration(
                  // border: Border.all(color: Colors.black, width: 4),
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff5808e5),
                  // backgroundColor: Color(0xff5808e5),
                ),
                child: TabBar(
                  indicatorColor: Colors.white,
                  controller: controller.tabController,
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: const [
                    Tab(
                      child: CustomText(
                          text: 'Profile', alignment: Alignment.center),
                      icon: Icon(Icons.person_off_sharp),
                    ),
                    Tab(
                      child: CustomText(
                          text: 'Password', alignment: Alignment.center),
                      icon: Icon(Icons.password),
                    ),
                    Tab(
                      child: CustomText(
                          text: 'My Cars', alignment: Alignment.center),
                      icon: Icon(Icons.car_crash),
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

  Widget CoverProfile() => Container(
        width: double.infinity,
        height: profileHight,
      );

  /// Profile Image For User
  Widget ImageProfile() => CircleAvatar(
        radius: profileHight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: AssetImage('images/Account.png'),
      );
}
