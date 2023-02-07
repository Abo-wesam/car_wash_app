import 'package:flutter/material.dart';

import '../../constant.dart';

class CarSteperTemplete extends StatefulWidget {
  const CarSteperTemplete({super.key});

  @override
  State<CarSteperTemplete> createState() => _CarSteperTempleteState();
}

class _CarSteperTempleteState extends State<CarSteperTemplete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 0.35,
        child: ListView.separated(
          itemCount: listCarSteper.length,
          itemBuilder: (context, index) {
            final carsteperList = listCarSteper[index];
            return Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1.3, color: Colors.blue, style: BorderStyle.solid),
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Image.asset(
                        carsteperList.name_image,
                        width: 40,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      carsteperList.name_CarSteper,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.red.shade600,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Radio(
                        value: carsteperList.value,
                        groupValue: carsteperList.groupValue,
                        onChanged: (value) {
                          activeColor:
                          Colors.green;

                          print(value); //selected value
                        })
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 10),
        ),
      ),
    );
  }
}

class CarSteper {
  // ignore: non_constant_identifier_names
  String name_CarSteper, name_image, value, groupValue;

  CarSteper(this.name_CarSteper, this.name_image, this.value, this.groupValue);
}

List<CarSteper> listCarSteper = [
  CarSteper('Wash', 'images/sedan_128px.png', 'value1', 'groupValue'),
  CarSteper('Wash', 'images/suv_96px.png', 'value2', 'groupValue'),
  CarSteper('Wash', 'images/motorcycle_96px.png', 'value3', 'groupValue'),
  CarSteper('Wash', 'images/food_truck_96px.png', 'value4', 'groupValue'),
  CarSteper(
      'Wash', 'images/trailer_unloading_96px.png', 'value5', 'groupValue'),
];
