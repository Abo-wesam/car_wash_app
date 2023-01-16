import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constant.dart';

class ProfilController extends GetxController{
  late String Email;


  getDataUser() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.getString(Data_Current_User);


  }

}