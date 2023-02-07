import 'package:car_wash_app/view/CarWashPags/ongoing_page_carwash.dart';
import 'package:car_wash_app/view/auth/login_page.dart';
import 'package:car_wash_app/view/templetes/BookingCalendarDemoApp.dart';
import 'package:car_wash_app/view/templetes/car_steper_templete.dart';
import 'package:car_wash_app/view/templetes/carwash_near_you_templete.dart';
import 'package:car_wash_app/view/templetes/service_templete.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class StepperTemplete extends StatefulWidget {
  const StepperTemplete({super.key});

  @override
  State<StepperTemplete> createState() => _StepperTempleteState();
}

class _StepperTempleteState extends State<StepperTemplete> {
  int currentStep = 0;
   String dropdownvalue = 'Choose one car';
  var items = [
    'Profile',
    'Settings',
    'Account',
    'Go Premium',
    'Logout',
  ];

  @override
  Widget build(BuildContext context) {
    List<Step> getsteps() => [
          Step(
            state: currentStep > 0 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 0,
            title: const Text('Service'),
            content: Container(
              height: MediaQuery.of(context).size.height * 0.45,
              child: ServiceTemplete(),
            ),
          ),
          Step(
            state: currentStep > 1 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 1,
            title: const Text('Car'),
            content: Container(
              height: MediaQuery.of(context).size.height * 0.45,
              child: Column(
                children: [
                  Container(
                    height:MediaQuery.of(context).size.height * 0.35, 
                    child: CarSteperTemplete()),
                   SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width ,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white, //background color of dropdown button
                          border: Border.all(
                              color: kTextLigthColor,
                              width: 3), //border of dropdown button
                          borderRadius: BorderRadius.circular(
                              10), //border raiuds of dropdown button
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: DropdownButton(
                            hint: Text(dropdownvalue),
                            underline: Container(),
                            isExpanded: true,
                            
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
            ),
          ),
          Step(
            isActive: currentStep >= 2,
            title: const Text('Time'),
            content: Container(
              height: MediaQuery.of(context).size.height,
              child: BookingCalendarDemoApp(),
            ),
          )
        ];
    return Theme(
      data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(primary: kTextLigthColor)),
      child: Stepper(
        type: StepperType.horizontal,
        steps: getsteps(),
        currentStep: currentStep,
        onStepContinue: () {
          final isLastSteps = currentStep == getsteps().length - 1;
          if (isLastSteps)
            print('complete'); //here you send data to database
          else {
            setState(() {
              currentStep += 1;
            });
          }
        },
        onStepTapped: (value) => setState(() {
          currentStep = value;
        }),
        onStepCancel: () {
          currentStep == 0
              ? null
              : setState(() {
                  currentStep -= 1;
                });
        },
        controlsBuilder: (context, ControlsDetails) {
          final isLastSteps = currentStep == getsteps().length - 1;
          return Container(
            margin: EdgeInsets.only(top: 50),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: ControlsDetails.onStepContinue,
                    child: Text(isLastSteps ? 'Confirm ' : 'Next '),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                if (currentStep != 0)
                  Expanded(
                    child: ElevatedButton(
                      onPressed: ControlsDetails.onStepCancel,
                      child: const Text('Cencel '),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
    
  }
  
}
