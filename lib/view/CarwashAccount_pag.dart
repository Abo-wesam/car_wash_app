import 'package:car_wash_app/view/widget/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view_model/AccountController.dart';
import 'CarsPage.dart';
import 'PasswordPage.dart';
import 'ProfilePage.dart';

class CarwashAccount extends GetWidget<AccountController> {
  final double coverHight = 100;
  final double profileHight = 70;
  final bool carwash = true;

  @override
  Widget build(BuildContext context) {
    final top = coverHight - profileHight;
    final bottom = profileHight / 2;
    return Scaffold(
        appBar: AppBar(
          //  leading: Goback(),
          title: const Text("Me"),
        ),
        body:ListView(
            // padding: EdgeInsets.zero,
            children: [
              Center(
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

                  buildContent(),
          ]),
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

  Widget buildContent() => Column(

        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
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
                  child:
                      CustomText(text: 'Profile', alignment: Alignment.center),
                ),
                Tab(
                  child:
                      CustomText(text: 'Password', alignment: Alignment.center),
                ),
                Tab(
                  child:
                      CustomText(text: 'My Cars', alignment: Alignment.center),
                ),

              ],
            ),
          ),
      //   TabBarView(
      //         controller: controller.tabController,
      //         children: [
      //           ProfilePage(),
      //           // PasswordPage(),
      //           // CarsPage(),
      //         ],
      //       ),
      //     ),
         ],
       );
// TabContentCustomer(),


}
