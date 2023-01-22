import 'package:car_wash_app/model/announcement.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class AnnouncementsHomeTemplete extends StatelessWidget {
  const AnnouncementsHomeTemplete({super.key});
  @override
  Widget build(BuildContext context) {
     
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: announcements.length,
      itemBuilder: (context, index) {
        final announcement = announcements[index];
        return Ink(
          
          decoration: BoxDecoration(
              border: Border.all(
                  width: 1.3, color: Colors.blue, style: BorderStyle.solid),
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(16)),
          child: InkWell(
            onTap: () {
              
            },
            child: Column(children: [
              const SizedBox(height: 10,),
              Container(
                
                padding: const EdgeInsets.all(10.0),
                height: 50,
                width: 50,
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
                height: 8,
              ),
              Text(
                announcement.name,
                style: const TextStyle(color: kTextColor, fontSize: 16),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                announcement.time,
                style: const TextStyle(color: kTextLigthColor, fontSize: 10),
              ),
              Text(
                announcement.date,
                style: const TextStyle(color: kTextLigthColor, fontSize: 10),
              ),
              Container(
                width: 140,
                alignment: Alignment.bottomLeft,
                child: Text(
                  announcement.decirbtion,
                  style: const TextStyle(color: kTextColor, fontSize: 10),
                  softWrap: false,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              
                
            ]),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 10),
    );

  }
}
