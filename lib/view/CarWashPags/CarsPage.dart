import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get.dart';

import '../../view_model/ProfilController.dart';
import '../widget/form_button.dart';
import '../widget/input_field.dart';

class CarsPage extends GetWidget<ProfilController> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show All Your Car '),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            // child: SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            child: ListView.builder(
              itemCount: controller.carlist.value.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  child: row(index),

                  // child: row(index),
                );
                // row(index);
              },
            ),
          ),
          SizedBox(height: screenHeight * .025),
          Container(
            //  margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        scrollable: true,
                        title: Text('Add New Car'),
                        content: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Form(
                            child: Column(
                              children: <Widget>[
                                InputField(
                                  onChanged: (value) {
                                    controller.Type_car = value;
                                  },
                                  labelText: "Type Care",
                                  textInputAction: TextInputAction.next,
                                  autoFocus: true,
                                  icon: Icon(Icons.car_crash),
                                ),
                                SizedBox(height: screenHeight * .025),
                                InputField(
                                  onChanged: (value) {
                                    controller.license_plate = value;
                                  },
                                  labelText: "license plate",
                                  textInputAction: TextInputAction.next,
                                  autoFocus: true,
                                  icon: Icon(Icons.car_crash),
                                ),
                                SizedBox(height: screenHeight * .025),
                                FormButton(
                                  text: "Select Color",
                                  onPressed: (){
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context){
                                          return AlertDialog(
                                            title: Text('Pick a color!'),
                                            content: SingleChildScrollView(
                                              child: BlockPicker(
                                                pickerColor: Colors.indigo, //default color
                                                onColorChanged: (Color color){ //on color picked
                                                 print(color);
                                                 controller.colorSelected=color.value  ;
                                                 print(controller.colorSelected);
                                                },
                                              ),
                                            ),
                                            actions: <Widget>[
                                              ElevatedButton(
                                                child: const Text('DONE'),
                                                onPressed: () {
                                                  Navigator.of(context).pop(); //dismiss the color picker
                                                },
                                              ),
                                            ],
                                          );
                                        }
                                    );
                                  },

                                ),
                                // ColorPicker(
                                //   pickerColor: Colors.indigo, //default color
                                //   onColorChanged: (Color color) {
                                //     print(color);
                                //     //on color picked
                                //     controller.color_car = color as String;
                                //   },
                                // )
                              ],
                            ),
                          ),
                        ),
                        //:TODO ////// Button  Handling Add New Car and Dealete Car
                        actions: <Widget>[
                          FormButton(
                            text: "Save",
                            onPressed: controller.CreateNewCar,
                          ),
                        ],
                      );
                    });
              },
              backgroundColor: Colors.deepOrangeAccent,
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }

  Widget row(int index) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '',
            //   controller.carlist.value[index].car_type,
            //users!.users[index].name,
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
        ],
      ),
    );
  }
}
