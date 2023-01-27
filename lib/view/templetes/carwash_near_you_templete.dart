import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../model/announcement.dart';

class CarwashNearYouTemplet extends StatelessWidget {
  const CarwashNearYouTemplet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      announcement.name,
                      style: const TextStyle(color: kTextColor, fontSize: 16),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      announcement.time,
                      style:

                      const TextStyle(color: kTextLigthColor, fontSize: 10),

                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      announcement.date,
                      style:

                      const TextStyle(color: kTextLigthColor, fontSize: 10),

                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 24.0,
                        semanticLabel:

                        'Text to announce in accessibility modes',

                      ),
                      const SizedBox(
                        width: 27,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: kTextColor,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Request',
                            style: TextStyle(color: Colors.white),
                          ))
                    ])
                  ],
                )
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>

      const SizedBox(width: 10),

    );
  }
}
