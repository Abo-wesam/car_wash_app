import 'package:car_wash_app/model/CarModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get.dart';

import '../../view_model/ProfilController.dart';
import 'AddNewCarPage.dart';

class CarsPage extends GetWidget<ProfilController> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    final isSelected = <bool>[false, false];
    return Scaffold(
      // appBar: AppBar(
      //   // title: const Text('Show All Your Car '),
      // ),
      body: Row(children: <Widget>[
        Expanded(
          child: FutureBuilder<List<CarModel>>(
              future: controller.GetListCar(),
              builder: (
                context,
                snapshot,
              ) {
                if (snapshot.connectionState == ConnectionState.done) {
                  print(snapshot.error);
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 50,
                            // margin:const EdgeInsets.only(left:20,right: 20) ,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),

                              // color: Colors.blue
                            ),
                            child: Container(

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                //   color: Colors.blueAccent,
                                // color: Color(0xFF6200EE).withOpacity(0.08),
                               ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: Text(
                                      snapshot.data![index].car_type,
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),

                                  ),
                                  SizedBox(width: 50),
                                  IconButton(onPressed:(){
                                    controller.isAdd=false;
                                    Get.to(editaddcarpage());
                                  } , icon: Icon( Icons.edit),
                                      hoverColor:Color(0xFF6200EE),
                                  ),

                                  IconButton(onPressed:(){

                                  } , icon: Icon( Icons.delete),
                                    hoverColor:Color(0xFF6200EE),
                                  ),

                                  // ToggleButtons(
                                  //   color: Colors.black.withOpacity(0.60),
                                  //   selectedColor: Color(0xFF6200EE),
                                  //   selectedBorderColor: Color(0xFF6200EE),
                                  //   fillColor: Color(0xFF6200EE).withOpacity(0.08),
                                  //   splashColor: Color(0xFF6200EE).withOpacity(0.12),
                                  //   hoverColor: Color(0xFF6200EE).withOpacity(0.04),
                                  //   borderRadius: BorderRadius.circular(4.0),
                                  //   isSelected: isSelected,
                                  //   onPressed: (index) {
                                  //     // Respond to button selection
                                  //
                                  //        isSelected[index] = !isSelected[index];
                                  //
                                  //   },
                                  //   children: [
                                  //     Icon(Icons.edit),
                                  //     Icon(Icons.delete),
                                  //   ],
                                  // )

                                ],
                              ),
                            ),

                          );
                        });
                  }
                  return Text("....Loding Data ");
                }
                return Text("Connection filed");
              }),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.isAdd = true;

          Get.to(editaddcarpage());
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget row(String index) {
    return Container(
      decoration: BoxDecoration(
        //   color: Colors.blueAccent,
        border: Border.all(
          width: 1,
          color: Colors.indigo,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child:
        Text(
          index,
          style: TextStyle(
            fontSize: 12,
          ),
        ),


    );
  }
}
