import 'package:car_wash_app/view/CarWashPags/ongoing_page_carwash.dart';
import 'package:car_wash_app/view/auth/login_page.dart';
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

  @override
  Widget build(BuildContext context) {
    
    List<Step> getsteps() => [
          Step(
            state: currentStep > 0 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 0,
            title: const Text('Service'),
            content:  Expanded(
              child: Container(
                
                color: Colors.amber,
              ),
            ),
          ),
          Step(
            state: currentStep > 1 ? StepState.complete : StepState.indexed,
            isActive: currentStep >= 1,
            title: const Text('Car'),
            content: Container(
              color: Colors.amber,

            ),
          ),
          Step(
            isActive: currentStep >= 2,
            title: const Text('Time'),
            content: Container(),
          )
        ];
    return  Theme(
        data: Theme.of(context)
            .copyWith(colorScheme: const ColorScheme.light(primary: kTextLigthColor)),
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