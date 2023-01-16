import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Goback extends StatelessWidget {

//

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
        child: ElevatedButton(
            onPressed: (){

              print('object');
              Get.back();
              // Navigator.pop(context);
            },
         child:  Icon(Icons.arrow_back_ios_rounded),
          //replace with our own icon data.
        ),



      );

  }
}
