import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../constant.dart';
import '../../view_model/HomeController.dart';
import '../templetes/announcements_home_templete.dart';
import '../templetes/carwash_near_you_templete.dart';

class HomePageCarwash extends GetWidget<HomeController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.grey.shade200),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            width: 1.5,
                            color: Colors.blue,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: const Icon(
                          Icons.map,
                          size: 30,
                          color: Colors.blue,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Announcements',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kTextColor,
                          fontSize: 20,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: RichText(
                          text: const TextSpan(
                            text: "show all ",
                            style: TextStyle(color: kTextLigthColor),
                          ),
                        ),
                      ),
                    ]),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(height: 180, child: AnnouncementsHomeTemplete()),
                const SizedBox(
                  height: 15,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Car wash near you',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kTextColor,
                          fontSize: 20,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: RichText(
                          text: const TextSpan(
                            text: "show all ",
                            style: TextStyle(color: kTextLigthColor),
                          ),
                        ),
                      ),
                    ]),

                const SizedBox(
                  height: 100,
                 
                  child: CarwashNearYouTemplet(),

                  
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Best Rated Car wash',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                          fontSize: 20,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: RichText(
                          text: const TextSpan(
                            text: "show all ",
                            style: TextStyle(color: kTextLigthColor),
                          ),
                        ),
                      ),
                    ]),

                const SizedBox(
                  height: 100,
                 
                  child: CarwashNearYouTemplet(),

                  
                ),
              ],
            ),
          ),
        ],
      ),
    );
 
  }

}