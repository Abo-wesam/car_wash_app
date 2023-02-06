import 'package:car_wash_app/constant.dart';
import 'package:car_wash_app/view/templetes/announcements_service_templete.dart';
import 'package:car_wash_app/view/templetes/service_templete.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServicesCarwashpage extends StatelessWidget {
  const ServicesCarwashpage({super.key});
  TabBar get _tabBar =>  const TabBar(
    labelColor: kTextLigthColor,
     unselectedLabelColor: Colors.grey,
    
        padding: EdgeInsets.all(10),
        tabs: <Widget>[
          Tab(
            child: Text(
              "Service",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Tab(
            child: Text(
              'Announcement',
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          
          toolbarHeight: 80,
          title: const Text('Services'),
          elevation: 0,
          
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: Material(
              color: Colors.white, //<-- SEE HERE
              child: _tabBar,
            ),

        
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
                child: Padding(
              padding: EdgeInsets.all(10.0),
              child: ServiceTemplete(),
            )),
            Center(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: AnnouncementsServiceTemplete(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
