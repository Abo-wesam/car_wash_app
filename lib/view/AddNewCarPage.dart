import 'package:car_wash_app/model/CarModel.dart';
import 'package:car_wash_app/view/widget/form_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../view_model/ProfilController.dart';


class editaddcarpage extends GetWidget<ProfilController> {

  late Color   inticarcolor = Colors.white ;


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    controller.colorSelected=inticarcolor.value.toString();
    // print("intilizaation color +$controller.colorSelected+");
    print(controller.isAdd);
    controller.isAdd;
    return Scaffold(
      appBar: AppBar(
        title: (controller.isAdd ? Text('Add New Car') : Text('Edit Car')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: controller.isAdd ? Column(
          children: <Widget>[
            TextFormField(
              onChanged: (value)=>{
                controller.Type_car=value,
              },
              // cursorColor: Theme.of(context).cursorColor,
              // initialValue: 'Car Type',
              maxLength: 20,
              decoration: InputDecoration(
                icon: Icon(Icons.car_repair_sharp),
                labelText: 'Car Type',
                labelStyle: TextStyle(
                  color: Color(0xFF6200EE),
                ),
                helperText: 'Should be input character',
                suffixIcon: Icon(
                  Icons.check_circle,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6200EE)),
                ),
              ),
            ),

            SizedBox(height: screenHeight * .025),
            TextFormField(
              onChanged:(value)=>{
                controller.license_plate=value
              },
              // cursorColor: Theme.of(context).cursorColor,
              // initialValue: 'License Plate',
              maxLength: 20,
              decoration: InputDecoration(
                icon: Icon(Icons.car_rental_outlined),
                labelText: 'License Plate',
                labelStyle: TextStyle(
                  color: Color(0xFF6200EE),
                ),
                helperText: 'Should be input character and number',
                suffixIcon: Icon(
                  Icons.check_circle,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6200EE)),
                ),
              ),
            ),

            SizedBox(height: screenHeight * .025),
            Column(
              children: [
                Container(
                  // width: 50,
                  // height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.orange),

                  child:  FloatingActionButton.extended(
                    backgroundColor: const Color(0xff03dac6),
                    foregroundColor: Colors.black,
                    onPressed: () {
                      PickColor(context);
                    },
                    icon: Icon(Icons.add),
                    label: Text('Pic color'),
                  ),

                ),
              ],
            ),
            SizedBox(
              height: screenHeight * .077,
            ),

            ElevatedButton.icon(

              onPressed: () {
               controller.CreateNewCar;
              },
              icon: Icon(Icons.add, size: 30),
              label: Text("Save a New Car"),
              style:  ButtonStyle( ),

            ),

          ],
        )
        ///:    :hanadling Edite Car
        :Column(
          children: <Widget>[
            TextFormField(
              onChanged: (value)=>{
                controller.Type_car=value,
              },
              // cursorColor: Theme.of(context).cursorColor,
              // initialValue: 'Car Type',
              maxLength: 20,
              decoration: InputDecoration(
                icon: Icon(Icons.car_repair_sharp),
                labelText: 'Car Type',
                labelStyle: TextStyle(
                  color: Color(0xFF6200EE),
                ),
                helperText: 'Should be input character',
                suffixIcon: Icon(
                  Icons.check_circle,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6200EE)),
                ),
              ),
            ),

            SizedBox(height: screenHeight * .025),
            TextFormField(
              onChanged:(value)=>{
                controller.license_plate=value
              },
              // cursorColor: Theme.of(context).cursorColor,
              // initialValue: 'License Plate',
              maxLength: 20,
              decoration: InputDecoration(
                icon: Icon(Icons.car_rental_outlined),
                labelText: 'License Plate',
                labelStyle: TextStyle(
                  color: Color(0xFF6200EE),
                ),
                helperText: 'Should be input character and number',
                suffixIcon: Icon(
                  Icons.check_circle,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6200EE)),
                ),
              ),
            ),

            SizedBox(height: screenHeight * .025),
            Column(
              children: [
                Container(
                  // width: 50,
                  // height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.orange),

                  child:  FloatingActionButton.extended(
                    backgroundColor: const Color(0xff03dac6),
                    foregroundColor: Colors.black,
                    onPressed: () {
                      PickColor(context);
                    },
                    icon: Icon(Icons.add),
                    label: Text('Pic color'),
                  ),

                ),
              ],
            ),
            SizedBox(
              height: screenHeight * .077,
            ),

            ElevatedButton.icon(

              onPressed: () {
                controller.CreateNewCar;
              },
              icon: Icon(Icons.add, size: 30),
              label: Text("Save a New Car"),
              style:  ButtonStyle( ),

            ),

          ],
        )


      ),

    );
  }

  Widget buildColorpick() {


    return ColorPicker(
      pickerColor:inticarcolor ,
      onColorChanged: (carcolorr) =>controller.colorSelected=carcolorr.value.toString(),

    );
  }

  void PickColor(BuildContext context) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Pick your color'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildColorpick(),
              // Container(
              //   width:24,
              //   higth:24,
              //   child: Text(
              //     'Select',
              //     style: TextStyle(fontSize: 20),
              //   ),
              //   onPressed: () => Navigator.of(context).pop(),
              // ),
            ],
          ),
        ),
      );
}
