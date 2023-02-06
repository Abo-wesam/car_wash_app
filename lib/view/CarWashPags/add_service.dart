import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant.dart';

class AddService extends StatefulWidget {
  const AddService({super.key});

  @override
  State<AddService> createState() => _AddServiceState();
}

class _AddServiceState extends State<AddService> {
  String dropdownvalue = 'Profile';

  var items = [
    'Profile',
    'Settings',
    'Account',
    'Go Premium',
    'Logout',
  ];
  @override
  Widget build(BuildContext context) {
    {
      final appBar = AppBar(
        leading: BackButton(
          onPressed: () {
            Get.back();
          },
          color: Colors.white, // <-- SEE HERE
        ),
        title: const Text('Add Service'),
        centerTitle: true,
      );

      final double hightScreen =
          hightscreenSize(context) - appBar.preferredSize.height;
          

      final widthScreen = widthscreenSize(context);

      return Scaffold(
          appBar: appBar,
          body: Padding(
            padding: EdgeInsets.only(
                top: hightScreen * 0.050,
                right: widthScreen * 0.05,
                left: widthScreen * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: widthScreen * 0.39,
                      child: const Text(
                        'Choose Service:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: widthScreen * 0.01,
                    ),
                    SizedBox(
                      width: widthScreen * 0.5,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors
                              .white, //background color of dropdown button
                          border: Border.all(
                              color: kTextLigthColor,
                              width: 3), //border of dropdown button
                          borderRadius: BorderRadius.circular(
                              10), //border raiuds of dropdown button
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: DropdownButton(
                            underline: Container(),
                            isExpanded: true,
                            value: dropdownvalue,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                  style: const TextStyle(
                                    color: Colors.black54,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: hightScreen * 0.05,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: widthScreen * 0.39,
                      child: const Text(
                        'Cost service:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: widthScreen * 0.01,
                    ),
                    SizedBox(
                      width: widthScreen * 0.2,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors
                              .white, //background color of dropdown button
                          border: Border.all(
                              color: kTextLigthColor,
                              width: 3), //border of dropdown button
                          borderRadius: BorderRadius.circular(
                              10), //border raiuds of dropdown button
                        ),
                        child: const TextField(),
                      ),
                    ),
                    SizedBox(
                      width: widthScreen * 0.05,
                    ),
                    const Text(
                      
                      'SAR',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ],
                ),
                SizedBox(height: hightScreen*0.05,),
                SizedBox(
                  width: widthScreen,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kTextLigthColor,
                        padding: const EdgeInsets.all(20),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Add',
                        style: TextStyle(fontSize: 18),
                      )),
                )
              ],
            ),
          ));
    }
  }
}
