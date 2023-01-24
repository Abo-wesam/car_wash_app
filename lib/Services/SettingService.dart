import 'package:car_wash_app/model/CarModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constant.dart';

class SettingService {

  CollectionReference _ReferenceCar = FirebaseFirestore.instance.collection('Car');

  Future<CarModel> getCars() async {
    SharedPreferences _prefe = await SharedPreferences.getInstance();
    print(_prefe.getString(Data_Current_User));
    var Result = await _ReferenceCar.where(
        'id_cust', isEqualTo: _prefe.getString(Data_Current_User)).get();
    return CarModel.fromjson(Result.docs.asMap());
  }

  CreateNewCar(CarModel car) async {
    SharedPreferences _prefe = await SharedPreferences.getInstance();
  var getcount=await   _ReferenceCar.doc().get();

    var custId = _prefe.getString(Data_Current_User);
    car.id_cust = custId!;
    car.id_car=getRandomString(5);
    print( car.id_cust);
     await _ReferenceCar.doc(car.id_car).set(car.tojson());

  }
}