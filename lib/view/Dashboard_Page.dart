import 'dart:async';
import 'package:car_wash_app/view/widget/CustomAnimatedBottomBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../view_model/dashboardController.dart';
import 'Account_Page.dart';
import 'Schedul_Page.dart';
import 'home_page.dart';

class Dashboard extends StatefulWidget  {
  @override
  _MyDashBoardState createState() => _MyDashBoardState();
}
class _MyDashBoardState extends State<Dashboard> {

  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return
    GetBuilder<DashboardController>(builder: (controller)
    {
      return Scaffold(

        body: IndexedStack(

          index: controller.tabindex,

          children: <Widget>[
            HomePage(),
            Schedulepage(),
            AccountPage(),
          ],
        ),


        bottomNavigationBar:CustomAnimatedBottomBar(
          containerHeight: 70,
          backgroundColor: Colors.white,
          selectedIndex: controller.tabindex,
          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          onItemSelected: controller.changselectedtab,
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: Icon(Icons.apps),
              title: Text('Home'),
              activeColor: Colors.green,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.schedule),
              title: Text('Schedule'),
              activeColor: Colors.purpleAccent,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.person),
              title: Text(
                'Me ',
              ),
              activeColor: Colors.pink,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              activeColor: Colors.blue,
              inactiveColor: _inactiveColor,
              textAlign: TextAlign.center,
            ),
          ],
        ),

      );
    });
  }

  Widget _buildBottomBar(){
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: Colors.white,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.apps),
          title: Text('Home'),
          activeColor: Colors.green,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.schedule),
          title: Text('Schedule'),
          activeColor: Colors.purpleAccent,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.person),
          title: Text(
            'Me ',
          ),
          activeColor: Colors.pink,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.settings),
          title: Text('Settings'),
          activeColor: Colors.blue,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }



}