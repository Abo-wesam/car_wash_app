import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Services/SettingService.dart';
import '../constant.dart';
import '../model/CarModel.dart';

class ProfilController extends GetxController {
  late String Type_car, license_plate;
  late int idcar;
  late int colorSelected;
  late String Email;
  Rx<List<CarModel>> carlist = Rx<List<CarModel>>([]);

  //  CarModel carlist =CarModel () ;
  void onInit() {
    super.onInit();
    _GetListCar();
    //   SettingService().getCars().then((usersFromServer) {
    //     carlist = usersFromServer as Rx<List<CarModel>>;
    //   });
    //
  }
  _GetListCar()async{
    carlist=SettingService().getCars() as Rx<List<CarModel>>;
    carlist.a



  }

  getDataUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.getString(Data_Current_User);
  }

  GetCar() {}

  bool ValidateCar() {
    bool isvalid = true;
    if (Type_car.isEmpty && license_plate.isEmpty && colorSelected.isNaN) {
      isvalid = false;
    }
    return isvalid;
  }

  CreateNewCar() {
    if (ValidateCar()) {


      CarModel carModel = CarModel(
      '1',
      '',
      Type_car,
      colorSelected,
      license_plate);
      SettingService().CreateNewCar(carModel);
    }
  }
}
