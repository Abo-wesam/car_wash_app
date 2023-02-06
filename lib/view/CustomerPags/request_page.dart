import 'package:car_wash_app/constant.dart';
import 'package:car_wash_app/view/templetes/stepper_templete.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../../model/announcement.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appBer = AppBar(
      title: const Text('Request'),
      elevation: 0,
      centerTitle: true,
    );

    final double hightScreen =
        hightscreenSize(context) - appBer.preferredSize.height;
    final widthScrren = widthscreenSize(context);

    return Scaffold(
        appBar: appBer,
        body: Container(
          height: hightScreen,
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: hightScreen*0.15,
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          border: Border.all(color: kTextLigthColor),
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                              scale: 0.5,
                              image: AssetImage(
                                  'images/automatic_car_wash_96px.png'))),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  const [
                        Text(
                          'Car wash',
                          style: TextStyle(
                              color: kTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        
                        Text(
                          'Riyadh- Alamariyah',
                          style: TextStyle(
                              color: kTextLigthColor, fontSize: 10),
                        ),
                        
                        Text(
                          'Open (7 AM -22 PM)',
                          style: TextStyle(
                              color: kTextLigthColor, fontSize: 10),
                        ),
                      ],
                    ),
                    const Expanded(child: SizedBox(width: 3,),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.star_purple500_outlined,
                          color: Colors.orangeAccent,
                          size: 18,
                        ),
                        Text(
                          '6.4 Km',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                      
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
              // const Divider(
              //   thickness: 3,
              //   color: Colors.grey,
              //   indent: 20,
              //   endIndent: 20,
              // ),
              Flexible(
                flex: 5,
                child: Container(
                    height: hightScreen * 0.82, child: StepperTemplete()),
              ),
            ],
          ),
        ));
  }
}
