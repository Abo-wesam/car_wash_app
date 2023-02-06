import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant.dart';
import '../../model/announcement.dart';
import '../CarWashPags/add_service.dart';

class ServiceTemplete extends StatelessWidget {
  const ServiceTemplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: listService.length,
        itemBuilder: (context, index) {
          final serviceList = listService[index];
          return Container(
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1.3, color: Colors.blue, style: BorderStyle.solid),
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Text(
                      serviceList.name_service,
                      style:
                          const TextStyle(fontSize: 16, color: kTextLigthColor),
                    ),
                  ),
                  const SizedBox(
                    width: 75,
                  ),
                  Text(
                    serviceList.price,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.red.shade600,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  IconButton(
                    color: kTextLigthColor,
                    onPressed: () {},
                    iconSize: 24,
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                    color: kTextLigthColor,
                    onPressed: () {},
                    iconSize: 24,
                    icon: const Icon(Icons.delete),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 10),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to( AddService());
          
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Service {
  
  // ignore: non_constant_identifier_names
  String name_service, price;

  Service(this.name_service, this.price);
}

List<Service> listService = [
  Service('Wash', '120 SAR'),
  Service('Wash', '120 SAR'),
  Service('Wash', '120 SAR'),
  Service('Wash', '120 SAR'),
  Service('Wash', '120 SAR'),
  Service('Wash', '120 SAR'),
  Service('Wash', '120 SAR'),
  Service('Wash', '120 SAR'),
  Service('Wash', '120 SAR'),
];
