import 'package:car_wash_app/view/CarWashPags/add_announcement.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant.dart';
import '../../model/announcement.dart';

class AnnouncementsServiceTemplete extends StatelessWidget {
  const AnnouncementsServiceTemplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: announcements.length,
        itemBuilder: (context, index) {
          final announcement = announcements[index];
          return Container(
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1.3, color: Colors.blue, style: BorderStyle.solid),
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: Colors.blueGrey,
                            style: BorderStyle.solid),
                        color: kBgTempletColor,
                        borderRadius: BorderRadius.circular(14)),
                    child: Image.asset(announcement.image),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          announcement.name,
                          style: const TextStyle(
                              color: kTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          announcement.time,
                          style: const TextStyle(
                              color: kTextLigthColor, fontSize: 10),
                        ),
                        Text(
                          announcement.decirbtion,
                          style: const TextStyle(
                              color: kTextLigthColor, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
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
                      const SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: kTextColor,
                              alignment: Alignment.bottomCenter,
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Request',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ],
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
          Get.to(AddAnnuncement());
          
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
