import 'package:car_wash_app/view/CarWashPags/ongoing_page_carwash.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../templetes/announcements_service_templete.dart';
import '../templetes/service_templete.dart';

class SchedulePageCarwash extends StatelessWidget {
  const SchedulePageCarwash({super.key});
  TabBar get _tabBar =>  const TabBar(
    labelColor: kTextLigthColor,
     unselectedLabelColor: Colors.grey,
    
        padding: EdgeInsets.all(10),
        tabs: <Widget>[
          Tab(
            child: Text(
              "Find",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Tab(
            child: Text(
              "On going",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Tab(
            child: Text(
              'Completed',
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          elevation: 0,
          bottom: PreferredSize(preferredSize: _tabBar.preferredSize,
          child: Material(
            color: Colors.white,
            child: _tabBar,
          ),
          ),
          title: const Text(
            textAlign:TextAlign.start,
            "Schedule"),


        ),
        body: const TabBarView(children: [
          Center(
                child: Padding(
              padding: EdgeInsets.all(10.0),
              child: OngoingPageCarwash(),
            )),
          Center(
                child: Padding(
              padding: EdgeInsets.all(10.0),
              child: OngoingPageCarwash(),
            )),
            Center(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: AnnouncementsServiceTemplete(),
              ),
            )
        ]),
      ),
    );
  }
}