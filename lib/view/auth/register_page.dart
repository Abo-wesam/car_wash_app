import 'package:car_wash_app/view/auth/register_page_carwash.dart';
import 'package:car_wash_app/view/auth/register_page_customer.dart';
import 'package:car_wash_app/view_model/register_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/GoBack.dart';
import '../widget/custom_text.dart';

class RegisterPage extends GetWidget<RegisterViewModel> {
  const RegisterPage({super.key});


  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(RegisterViewModel());

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Goback(),
          title: const Text("Register"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 15,
            left: 10,
            right: 10,
          ),
          child: Column(
            children: [
              Container(
                height: 50,
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
                       CustomText(text: 'Carwash',alignment: Alignment.center),
                    ),
                    Tab(
                     child:
                       CustomText(text: 'Customer',alignment: Alignment.center),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: controller.tabController,
                  children:  [
                    RegisterPageCarwash(),
                    RegisterPageCustomer(),


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
