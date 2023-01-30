import 'package:car_wash_app/view/templetes/announcements_service_templete.dart';
import 'package:flutter/material.dart';

class ServicesCarwashpage extends StatelessWidget {
  const ServicesCarwashpage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Services'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child:
                Text("Service"),
              ),
              Tab(child: Text('Announcement'),)
              
            ],
          ),
        ),
        body:  const TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child:  Padding(
                padding: EdgeInsets.all(8.0),
                child: AnnouncementsServiceTemplete(),
              ),
            )
           
           
          ],
        ),
      ),
    );
  }
}