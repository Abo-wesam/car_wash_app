class CarModel {
  // CarModel ();
  late String  id_car,id_cust, car_type, license_plate;
late   int color_car;
  CarModel(this.id_car, this.id_cust, this.car_type, this.color_car,this.license_plate);

  CarModel.fromjson(Map<dynamic, dynamic> user) {
    if (user == null) {
      return;
    }
    id_car = user['id_car'];
    id_cust = user['id_cust'];
    car_type = user['car_type'];
    color_car = user['color_car'];
    license_plate = user['license_plate'];
  }

  tojson() {
    return {
      'id_car': id_car,
      'id_cust': id_cust,
      'car_type': car_type,
      'color_car': color_car,
      'license_plate': license_plate,
    };
  }
}
